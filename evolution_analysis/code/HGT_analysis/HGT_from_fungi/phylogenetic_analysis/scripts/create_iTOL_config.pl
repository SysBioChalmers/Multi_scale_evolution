#!/usr/bin/perl -w
use strict;
use warnings;
use Bio::TreeIO;
use Config::File::Simple;

my $infile = $ARGV[0]; #newick tree must end in .tree

$infile =~ /^(.*)\.tree$/;
my $query = $1;
my %color_hash;
popcolhash();

my $outfile1 = "${query}-color.txt";
my $outfile2 = "${query}-font.txt";

open (OFIL1, '>', $outfile1) or die "Couldn't write to file $outfile1: $!\n";
open (OFIL2, '>', $outfile2) or die "Couldn't write to file $outfile2: $!\n";
popcolorfile();
popfontfile();

my $in = new Bio::TreeIO(-file => "$infile", -format => 'newick');
while( my $tree = $in->next_tree ) {
	for my $node ( $tree->get_nodes ) {
		if ( $node->is_Leaf ) {
			my $name = $node->id();

			my $lineage = '';
			if ( $name =~ /.+_(other_[A-Za-z0-9]+)$/ or $name =~ /.+_([A-Za-z0-9]+)$/){
				$lineage = $1;
			}
			
			if ($name =~ /^QUERY/i){
				print OFIL2 "${name},label,#e31a1c,bold,1\n";
				print OFIL1 "${name} \#e31a1c Saccharomycotina\n";
			}else{
				print OFIL2 "${name},label,#000000,normal,1\n";		
			}
			
			if (exists $color_hash{$lineage}) {
			my $color = $color_hash{$lineage};
			print OFIL1 "${name} ${color}\n";
			}else{unless ($name =~ /^QUERY/i) {print OFIL1 "${name} \#969696 Other\n";}}
			
		}
	}
}

close OFIL1;
close OFIL2;

sub popcolorfile
{
print OFIL1 "DATASET_COLORSTRIP
#In colored strip datasets, each ID is associated to a color box/strip and can have an optional label. Color can be specified in hexadecimal, RGB or RGBA notation. When using RGB or RGBA notation, you cannot use COMMA as the dataset separator

#lines starting with a hash are comments and ignored during parsing

#=================================================================#
#                    MANDATORY SETTINGS                           #
#=================================================================#
#select the separator which is used to delimit the data below (TAB,SPACE or COMMA).This separator must be used throughout this file (except in the SEPARATOR line, which uses space).

#SEPARATOR TAB
#SEPARATOR COMMA
SEPARATOR SPACE

#label is used in the legend table (can be changed later)
DATASET_LABEL Taxonomy

#dataset color (can be changed later)
COLOR #000000

#=================================================================#
#                    OPTIONAL SETTINGS                            #
#=================================================================#

#If COLOR_BRANCHES is set to 1, branches of the tree will be colored according to the colors of the strips above the leaves.
#When all children of a node have the same color, it will be colored the same, ie. the color will propagate inwards towards the root.
COLOR_BRANCHES 1

#each dataset can have a legend, which is defined below
#for each row in the legend, there should be one shape, color and label
#shape should be a number between 1 and 5:
#1: square
#2: circle
#3: star
#4: right pointing triangle
#5: left pointing triangle

LEGEND_TITLE Taxonomy
LEGEND_SHAPES 1 1 1 1
LEGEND_COLORS #e31a1c #fdbf6f #28b1aa #969696
LEGEND_LABELS Saccharomycotina Fungi Bacteria Other 
# LEGEND_SHAPES 1 1 1 1 1 1 1 1 1 1 1 1
# LEGEND_COLORS #e31a1c #fb9a99 #ff7f00 #fdbf6f #b15928 #6a3d9a #cab2d6 #1f78b4 #a6cee3 #33a02c #ffff99 #969696 
# LEGEND_LABELS Leotiomycetes Sordariomycetes Eurotiomycetes Dothideomycetes other_Pezizomycotina other_Ascomycota other_Fungi other_Opisthokonta other_Eukaryota Bacteria Archaea Viruses 

#=================================================================#
#     all other optional settings can be set or changed later     #
#           in the web interface (under 'Datasets' tab)           #
#=================================================================#

#width of the colored strip
STRIP_WIDTH 35

#left margin, used to increase/decrease the spacing to the next dataset. Can be negative, causing datasets to overlap.
#MARGIN 5

#border width; if set above 0, a border of specified width (in pixels) will be drawn around the color strip 
#BORDER_WIDTH 2

#border color; used when BORDER_WIDTH is above 0
#BORDER_COLOR #969696

#always show internal values; if set, values associated to internal nodes will be displayed even if these nodes are not collapsed. It could cause overlapping in the dataset display.
#SHOW_INTERNAL 1

#Internal tree nodes can be specified using IDs directly, or using the 'last common ancestor' method described in iTOL help pages

#=================================================================#
#       Actual data follows after the DATA keyword                #
#=================================================================#
DATA

#Examples:
#assign a red colored strip to leaf 9606, with label 'Human' (label is displayed in the mouseover popups)
#9606 #ff0000 Human

#assign a green, semi-transparent (alpha 0.5) strip to an internal node, without any label. If 'Show internal values' is set to 'No', this will only be displayed if the node is collapsed. 
#9606|5664 rgba(0,255,0,0.5)
";

}

sub popfontfile
{
print OFIL2 "TREE_COLORS
#use this template to define branch colors and styles, colored ranges and label colors/font styles
#lines starting with a hash are comments and ignored during parsing

#=================================================================#
#                    MANDATORY SETTINGS                           #
#=================================================================#
#select the separator which is used to delimit the data below (TAB,SPACE or COMMA).This separator must be used throughout this file (except in the SEPARATOR line, which uses space).

#SEPARATOR TAB
#SEPARATOR SPACE
SEPARATOR COMMA

#First 3 fields define the node, type and color
#Possible types are:
#'range': defines a colored range (colored background for labels/clade)
#'clade': defines color/style for all branches in a clade
#'branch': defines color/style for a single branch
#'label': defines font color/style for the leaf label

#The following additional fields are required:
#for 'range', field 4 defines the colored range label (used in the legend)

#The following additional fields are optional:
#for 'label', field 4 defines the font style ('normal',''bold', 'italic' or 'bold-italic') and field 5 defines the numeric scale factor for the font size (eg. with value 2, font size for that label will be 2x the standard size)
#for 'clade' and 'branch', field 4 defines the branch style ('normal' or 'dashed') and field 5 defines the branch width scale factor (eg. with value 0.5, branch width for that clade will be 0.5 the standard width)

#Internal tree nodes can be specified using IDs directly, or using the 'last common ancestor' method described in iTOL help pages
#=================================================================#
#        Actual data follows after the DATA keyword               #
#=================================================================#
DATA
#NODE_ID,TYPE,COLOR,LABEL_OR_STYLE,SIZE_FACTOR

#Examples
#internal node with solid branches colored blue and twice the standard width
#9031|9606,clade,#0000ff,normal,2
#internal node with dashed branches colored red and one half the standard width
#601|340,clade,#ff0000,dashed,0.5
#a single internal branch colored green, dashed and 5 times the normal width
#915|777,branch,#00ff00,dashed,5

#colored range covering all leaves of an internal node, colored red and with label 'Eukaryota'
#184922|9606,range,#ff0000,Eukaryota
#examples of colored ranges from iTOL's Tree of Life
#2190|2287,range,#aaffaa,Archaea
#623|1502,range,#aaaaff,Bacteria

#leaf label for node 9606 will be displayed in green, bold and twice the regular font size
#9606,label,#00ff00,bold,2

#leaf label for node 9031 will be displayed in yellow, bold italic and half the regular font size
#9031,label,#ffff00,bold-italic,0.5

#leaf label for node 8015 will be displayed in blue
#8015,label,#0000ff
";
}

sub popcolhash
{

#good general color scheme
%color_hash = (
	     "Actinobacteria","#28b1aa Bacteria",
	     "Firmicutes","#28b1aa Bacteria",
	     "Proteobacteria","#28b1aa Bacteria",
		 "other_Bacteria","#28b1aa Bacteria",
		 "Aquificae","#28b1aa Bacteria",
		 "Armatimonadetes","#28b1aa Bacteria",
		 "BacteroidetesChlorobi","#28b1aa Bacteria",
		 "Caldiserica","#28b1aa Bacteria",
		 "ChlamydiaeVerrucomicrobia","#28b1aa Bacteria",
		 "Chloroflexi","#28b1aa Bacteria",
		 "Chrysiogenetes","#28b1aa Bacteria",
		 "Cyanobacteria","#28b1aa Bacteria",
		 "Deferribacteres","#28b1aa Bacteria",
		 "DeinococcusThermus","#28b1aa Bacteria",
		 "Dictyoglomi","#28b1aa Bacteria",
		 "Elusimicrobia","#28b1aa Bacteria",
		 "FibrobacteresAcidobacteria","#28b1aa Bacteria",
		 "Fusobacteria","#28b1aa Bacteria",
		 "Gemmatimonadetes","#28b1aa Bacteria",
		 "Nitrospinae","#28b1aa Bacteria",
		 "Nitrospirae","#28b1aa Bacteria",
		 "Planctomycetes","#28b1aa Bacteria",
		 "Spirochaetes","#28b1aa Bacteria",
		 "Synergistetes","#28b1aa Bacteria",
		 "Tenericutes","#28b1aa Bacteria",
		 "Thermodesulfobacteria","#28b1aa Bacteria",
		 "Thermotogae","#28b1aa Bacteria",
		 "other_Fungi","#fdbf6f Fungi",
		 "Microsporidia","#fdbf6f Fungi",
		 "other_Pezizomycotina","#fdbf6f Fungi",
		 "Dothideomycetes","#fdbf6f Fungi",
		 "Eurotiomycetes","#fdbf6f Fungi",
		 "Sordariomycetes","#fdbf6f Fungi",
		 "Leotiomycetes","#fdbf6f Fungi",
		 "Taphrinomycotina","#fdbf6f Fungi",
		 "Basidiomycota","#fdbf6f Fungi",
		 "Mucoromycota", "#fdbf6f Fungi",
		 "other_Dikarya","#fdbf6f Fungi",
		 "other_Ascomycota","#fdbf6f Fungi",
		 "Saccharomycotina","#e31a1c Saccharomycotina",
);

# #for intra fungal HGT
#  %color_hash = ("Actinobacteria","#33a02c Bacteria",
# 		 "Firmicutes","#33a02c Bacteria",
# 		 "Rhodophyta","#a6cee3 other_Eukaryota",
# 		 "other_Viridiplantae","#a6cee3 other_Eukaryota",
# 		 "Chlorophyta","#a6cee3 other_Eukaryota",
# 		 "Streptophyta","#a6cee3 other_Eukaryota",
# 		 "Glaucocystophyceae","#a6cee3 other_Eukaryota",
# 		 "Viroids","#969696 Viruses",
# 		 "Viruses","#969696 Viruses",
# 		 "Proteobacteria","#33a02c Bacteria",
# 		 "other_Opisthokonta","#1f78b4 other_Opisthokonta",
# 		 "Choanoflagellida","#1f78b4 other_Opisthokonta",
# 		 "Metazoa","#1f78b4 other_Opisthokonta",
# 		 "other_Bacteria","#33a02c Bacteria",
# 		 "Aquificae","#33a02c Bacteria",
# 		 "Armatimonadetes","#33a02c Bacteria",
# 		 "BacteroChlorobi","#33a02c Bacteria",
# 		 "Caldiserica","#33a02c Bacteria",
# 		 "ChlamydiaeVerrucomicrobia","#33a02c Bacteria",
# 		 "Chloroflexi","#33a02c Bacteria",
# 		 "Chrysiogenetes","#33a02c Bacteria",
# 		 "Cyanobacteria","#33a02c Bacteria",
# 		 "Deferribacteres","#33a02c Bacteria",
# 		 "DeinocThermus","#33a02c Bacteria",
# 		 "Dictyoglomi","#33a02c Bacteria",
# 		 "Elusimicrobia","#33a02c Bacteria",
# 		 "FibrobacteresAcidobacteria","#33a02c Bacteria",
# 		 "Fusobacteria","#33a02c Bacteria",
# 		 "Gemmatimonadetes","#33a02c Bacteria",
# 		 "Nitrospinae","#33a02c Bacteria",
# 		 "Nitrospirae","#33a02c Bacteria",
# 		 "Planctomycetes","#33a02c Bacteria",
# 		 "Spirochaetes","#33a02c Bacteria",
# 		 "Synergistetes","#33a02c Bacteria",
# 		 "Tenericutes","#33a02c Bacteria",
# 		 "Thermodesulfobacteria","#33a02c Bacteria",
# 		 "Thermotogae","#33a02c Bacteria",
# 		 "other_Eukaryota","#a6cee3 other_Eukaryota",
# 		 "Apusozoa","#a6cee3 other_Eukaryota",
# 		 "Breviatea","#a6cee3 other_Eukaryota",
# 		 "other_Fungi","#cab2d6 other_Fungi",
# 		 "Microsporidia","#cab2d6 other_Fungi",
# 		 "Saccharomycotina","#6a3d9a other_Ascomycota",
# 		 "other_Pezizomycotina","#b15928 other_Pezizomycotina",
# 		 "Dothideomycetes","#fdbf6f Dothideomycetes",
# 		 "Eurotiomycetes","#ff7f00 Eurotiomycetes",
# 		 "Sordariomycetes","#fb9a99 Sordariomycetes",
# 		 "Leotiomycetes","#e31a1c Leotiomycetes",
# 		 "Taphrinomycotina","#6a3d9a other_Ascomycota",
# 		 "Basidiomycota","#cab2d6 other_Fungi",
# 		 "other_Dikarya","#cab2d6 other_Fungi",
# 		 "other_Ascomycota","#6a3d9a other_Ascomycota",
# 		 "other_Stramenopiles","#a6cee3 other_Eukaryota",
# 		 "Bacillariophyta","#a6cee3 other_Eukaryota",
# 		 "Oomycetes","#a6cee3 other_Eukaryota",
# 		 "other_Alveolata","#a6cee3 other_Eukaryota",
# 		 "Apicomplexa","#a6cee3 other_Eukaryota",
# 		 "Ciliophora","#a6cee3 other_Eukaryota",
# 		 "Dinophyceae","#a6cee3 other_Eukaryota",
# 		 "other_Rhizaria","#a6cee3 other_Eukaryota",
# 		 "Cercozoa","#a6cee3 other_Eukaryota",
# 		 "Foraminifera","#a6cee3 other_Eukaryota",
# 		 "Euglenozoa","#a6cee3 other_Eukaryota",
# 		 "Fornicata","#a6cee3 other_Eukaryota",
# 		 "Heterolobosea","#a6cee3 other_Eukaryota",
# 		 "Jakobida","#a6cee3 other_Eukaryota",
# 		 "Malawimonadidae","#a6cee3 other_Eukaryota",
# 		 "Parabasalia","#a6cee3 other_Eukaryota",
# 		 "Amoebozoa","#a6cee3 other_Eukaryota",
# 		 "other_Archaea","#ffff99 Archaea",
# 		 "Aenigmarchaeota","#ffff99 Archaea",
# 		 "Crenarchaeota","#ffff99 Archaea",
# 		 "Diapherotrites","#ffff99 Archaea",
# 		 "Euryarchaeota","#ffff99 Archaea",
# 		 "Geoarchaeota","#ffff99 Archaea",
# 		 "Korarchaeota","#ffff99 Archaea",
# 		 "Nanoarchaeota","#ffff99 Archaea",
# 		 "Nanohaloarchaeota","#ffff99 Archaea",
# 		 "Parvarchaeota","#ffff99 Archaea",
# 		 "Thaumarchaeota","#ffff99 Archaea",
# 		 "Centroheliozoa","#a6cee3 other_Eukaryota",
# 		 "Cryptophyta","#a6cee3 other_Eukaryota",
# 		 "Haptophyceae","#a6cee3 other_Eukaryota",
# 		 "Katablepharidophyta","#a6cee3 other_Eukaryota",
# 		 "Oxymonadida","#a6cee3 other_Eukaryota");

}