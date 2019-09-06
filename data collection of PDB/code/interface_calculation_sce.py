# This script is used to find the interface residues from protein complex with protein 3D structures
import os
from Bio.PDB import *
from Bio.PDB import PDBParser
from Bio.PDB import PDBIO
import Bio.PDB
from optparse import OptionParser
import random
import sys
sys.path.append(r"/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code")
os.chdir('/Users/luho/PycharmProjects/3D_model/Data_collection_of_PDB/code')

def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False


def get_atom_list(structure, chains):
    output = dict()
    for chain in structure:
        if chain.id in chains:
            for residue in chain.get_residues():
                hetflag, resseq, icode = residue.get_id()
                the_id = (chain.id + "_" + str(resseq) + "_" + icode).strip()
                for atom in residue.get_unpacked_list():
                    if hetflag == ' ':
                        if the_id in output:
                            output[the_id].append(atom)
                        else:
                            output[the_id] = [atom]
    return output


def is_contact(res_1, other_atoms, cutoff):
    for atom in res_1:
        ns = NeighborSearch(other_atoms)
        center = atom.get_coord()
        neighbors = ns.search(center, cutoff)  # 5.0 for distance in angstrom
        residue_list = Selection.unfold_entities(neighbors, 'R')  # R for residues
        if len(residue_list) > 0:
            return True
    return False


def get_contacts(struc, all_atoms, verbose, cutoff):
    progress = 0
    contacts = []
    for residue in struc:
        progress += 1
        if len(verbose) > 0:
            print
            verbose, progress, "out of", len(struc)
        atom_list = struc[residue]
        outcome = is_contact(atom_list, all_atoms, cutoff)
        if outcome:
            contacts.append(residue)
    return contacts


# Filter out all the atoms from the chain,residue map given by residue_map
def get_all_atoms(residue_map):
    all_atoms_out = []
    for residue in residue_map:
        for atom in residue_map[residue]:
            all_atoms_out.append(atom)
            # Set the b-factor to zero for coloring by contacts
            atom.set_bfactor(0.0)
    return all_atoms_out


# Save the structures with B-factor field replaced with contact (100) and interface neighborhood (50)
def save_contacts(structure, chains, out_file):
    # Save only those chains that we are supposed to
    Select = Bio.PDB.Select

    class ConstrSelect(Select):
        def accept_chain(self, chain):
            # print dir(residue)

            if chain.id in chains:
                return 1
            else:
                return 0

    w = PDBIO()
    w.set_structure(structure)
    randint = random.randint(0, 9999999)
    w.save("TMP" + str(randint) + ".pdb", ConstrSelect())
    # Remove the HETATM and TER lines
    f_tmp = open("TMP" + str(randint) + ".pdb", 'r')
    f_out = open(out_file, 'w')
    for line in f_tmp.readlines():
        if line[0:3] != "TER" and line[0:6] != "HETATM":
            f_out.write(line)
    f_tmp.close()
    f_out.close()
    os.remove("TMP" + str(randint) + ".pdb")


# Save the residues which are contacts or neighborhood interface in a space-delimited file
def save_residues(filename, interface, contacts):
    f = open(filename, 'w')
    for elem in interface:
        splitted = elem.split("_")
        resname = str((splitted[1] + splitted[2]).strip())
        chain = splitted[0]
        # contact or neighbor of interface?
        coninf = "I"  # Interface neighbor
        if elem in contacts:
            coninf = "C"  # Contact
        f.write(chain + " " + resname + " " + coninf + "\n")
    f.close()


# only save the residues of the file that are in thelist
def save_constrained(filename_in, filename_out, thelist):
    f = open(filename_in, 'r')
    f_out = open(filename_out, 'w')
    for line in f.readlines():
        if "ATOM" in line:
            line = line.strip()
            resname = line[23:28].strip()
            icode = ""
            if (not is_number(resname[len(resname) - 1])):
                icode = resname[len(resname) - 1]
                resname = resname[0:(len(resname) - 1)]

            resname = line[21] + "_" + resname + "_" + icode
            if resname in thelist:
                f_out.write(line + "\n")


def getInterface(pbddir, pdbid):
    '''
    This function is used to obtain the interface of two chains
    :param pbddir: The dir of a pdb file, like '../data/5hoi.pdb'
    :return:
    '''
    str_1 = PDBParser().get_structure('first_one', pbddir)  # load your molecule
    str_2 = PDBParser().get_structure('second_one', pbddir)  # load your molecule
    # first obtain the chainID for the model
    model = str_1[0]
    chainID0 = []
    for chain in model:
        chainID0.append(chain.get_id())
    # obtain the combination of two chains in a pdb file
    from itertools import combinations
    chain_mix = list(combinations(chainID0, 2))
    dict0 = dict()
    for i in range(len(chain_mix)):
        ss = chain_mix[i]
        chains_1 = ss[0]
        chains_2 = ss[1]

        # Load the structures - they can be the same!
        atoms_1 = Selection.unfold_entities(str_1, 'C')  # C for chains
        atoms_2 = Selection.unfold_entities(str_2, 'C')  # C for chains

        # get the mapping from chain,residue id to the atom lists
        input_1 = get_atom_list(atoms_1, chains_1)
        input_2 = get_atom_list(atoms_2, chains_2)
        # get the full atom lists for neighbor search
        all_atoms_1 = get_all_atoms(input_1)
        all_atoms_2 = get_all_atoms(input_2)

        cutoff = 4.5
        i_cutoff = 0 #10.0  """For most applications when you want to get the interface CONTACTS without the neighborhood just run the program with the option –i 0 – this will not add any intramolecular neighborhood to your results."""
        # run neighbor search on both instances - not optimal but good enough for most imaginable applications.
        contacts_1 = get_contacts(input_1, all_atoms_2, "First molecule, residue ", cutoff)
        contacts_2 = get_contacts(input_2, all_atoms_1, "Second molecule, residue ", cutoff)

        # color the structures according to their new BFactors
        contact_map_1 = []
        # Color molecule 1
        for residue in contacts_1:
            for atom in input_1[residue]:
                atom.set_bfactor(100.0)
                contact_map_1.append(atom)

        # Color molecule 2
        contact_map_2 = []
        for residue in contacts_2:
            for atom in input_2[residue]:
                atom.set_bfactor(100.0)
                contact_map_2.append(atom)

        # Get interface's residues
        # run neighbor search on both instances - not optimal but good enough for most imaginable applications.
        interface_1 = contacts_1
        interface_2 = contacts_2

        if (i_cutoff > 0):
            interface_1 = get_contacts(input_1, contact_map_1, "First molecule, interfacial residue ", i_cutoff)
            interface_2 = get_contacts(input_2, contact_map_2, "Second molecule, interfacial residue ", i_cutoff)
        # some combinations may have no contact
        if interface_1:
            dict1 = {pdbid + '.' + chains_1 + '@' + chains_1 + 'and' + chains_2: interface_1}
            dict2 = {pdbid + '.' + chains_2 + '@' + chains_1 + 'and' + chains_2: interface_2}
            dict0.update(dict1)
            dict0.update(dict2)
            print(dict1, dict2, sep='\n')
    return dict0

'''
# This is the original code used to find the interface residues

#str_1 = PDBParser().get_structure('first_one', '1A2Y.pdb')  # load your molecule
#str_2 = PDBParser().get_structure('second_one', '1A2Y.pdb')  # load your molecule
# one example
str_1 = PDBParser().get_structure('first_one', '../data/5hoi.pdb')  # load your molecule
str_2 = PDBParser().get_structure('second_one', '../data/5hoi.pdb')  # load your molecule
chains_1 = 'A'
chains_2 = 'B'

# Load the structures - they can be the same!
atoms_1 = Selection.unfold_entities(str_1, 'C')  # C for chains
atoms_2 = Selection.unfold_entities(str_2, 'C')  # C for chains

# get the mapping from chain,residue id to the atom lists
input_1 = get_atom_list(atoms_1, chains_1)
input_2 = get_atom_list(atoms_2, chains_2)


# get the full atom lists for neighbor search
all_atoms_1 = get_all_atoms(input_1)
all_atoms_2 = get_all_atoms(input_2)

cutoff = 4.5
i_cutoff = 0 #10.0  """For most applications when you want to get the interface CONTACTS without the neighborhood just run the program with the option –i 0 – this will not add any intramolecular neighborhood to your results."""

# run neighbor search on both instances - not optimal but good enough for most imaginable applications.
contacts_1 = get_contacts(input_1, all_atoms_2, "First molecule, residue ", cutoff)
contacts_2 = get_contacts(input_2, all_atoms_1, "Second molecule, residue ", cutoff)

# color the structures according to their new BFactors
contact_map_1 = []
# Color molecule 1
for residue in contacts_1:
    for atom in input_1[residue]:
        atom.set_bfactor(100.0)
        contact_map_1.append(atom)

# Color molecule 2
contact_map_2 = []
for residue in contacts_2:
    for atom in input_2[residue]:
        atom.set_bfactor(100.0)
        contact_map_2.append(atom)

# Get interfacial residues
# run neighbor search on both instances - not optimal but good enough for most imaginable applications.
interface_1 = contacts_1
interface_2 = contacts_2

if (i_cutoff > 0):
    interface_1 = get_contacts(input_1, contact_map_1, "First molecule, interfacial residue ", i_cutoff)
    interface_2 = get_contacts(input_2, contact_map_2, "Second molecule, interfacial residue ", i_cutoff)
'''

# for simple test
infile = '../data/5hoi.pdb'
getInterface(pbddir = infile, pdbid='5hoi')


# for a loop test
infile = ['../data/1A2Y.pdb','../data/5hoi.pdb']
pdbID = ['1A2Y', '5hoi']
all_interface = dict()
for i in range(len(infile)):
    all_interface.update(getInterface(pbddir = infile[i], pdbid = pdbID[i]))


# for all sce experiment files
# Note these experiment files were downloaded on 2018-5-31
pdbfile = '/Users/luho/Documents/pdb file/PDB experimental pdb files/' # all experimental pdb files were stored in this directory
exp_pdb_all = os.listdir(pdbfile)
# remove the non pdb files
exp_pdb_all0 = [x for x in exp_pdb_all if x.endswith('pdb')]
all_interface = dict()
for i,x in enumerate(exp_pdb_all0):
    print(x)
    pdbID0 = x.split('.pdb')[0]
    infile0 = pdbfile + x
    all_interface.update(getInterface(pbddir=infile0, pdbid=pdbID0))


""" 
# These script not used
# Color molecule 1
for residue in interface_1:
    if residue in contacts_1:
        continue

    for atom in input_1[residue]:
        atom.set_bfactor(50.0)

# Color interface residues on molecule 2
for residue in interface_2:
    if residue in contacts_2:
        continue
    for atom in input_2[residue]:
        atom.set_bfactor(50.0)

#save result
cwd = "../result"
out_folder = ''

# Save the contact-colored structures
save_contacts(str_1, chains_1, cwd + "/" + out_folder + "/molecule_1.pdb")
save_contacts(str_2, chains_2, cwd + "/" + out_folder + "/molecule_2.pdb")

# save the interface residues
save_residues(cwd + "/" + out_folder + "/molecule_1.txt", interface_1, contacts_1)
save_residues(cwd + "/" + out_folder + "/molecule_2.txt", interface_2, contacts_2)

f = open(cwd + "/" + out_folder + "/parameters.txt", 'w')
f.write("The results in this folder were obtained using the following parameters:\n")
f.write("Contact distance: " + str(cutoff) + "A\n")
f.write("Interface distance: " + str(i_cutoff) + "A\n")
f.close()


# Constrain the pdb files to the interface residues only
 save_constrained(cwd + "/" + out_folder + "/molecule_1.pdb", cwd + "/" + out_folder + "/molecule_1_constrained.pdb",
                 interface_1)
 save_constrained(cwd + "/" + out_folder + "/molecule_2.pdb", cwd + "/" + out_folder + "/molecule_2_constrained.pdb", interface_2)
 """