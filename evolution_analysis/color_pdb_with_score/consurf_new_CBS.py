

# Define a Python subroutine to colour atoms by B-factor, using predefined intervals


def colour_consurf_CBS(selection="all"):
    
    # Colour other chains gray, while maintaining
    # oxygen in red, nitrogen in blue and hydrogen in white    
    cmd.color("gray", selection)
    cmd.util.cnc()
    
    # These are constants
    minimum = 0.0
    maximum = 9.0
    n_colours = 9
    # Colours are calculated by dividing the RGB colours by 255
    # RGB = [[[27,120,55],[90,174,97],[166,219,160],[217,240,211],[255,255,255],
    #        [231,212,232],[194,165,207],[153,112,171],[118,42,131]]
    colours = [
                [0.058823529, 0.352941176, 0.137254902],
                [0.352941176, 0.68627451, 0.37254902],
                [0.647058824, 0.862745098, 0.62745098],
                [0.843137255, 0.941176471, 0.823529412],
                [1, 1, 1],
                [0.901960784, 0.823529412, 0.901960784],
                [0.764705882, 0.647058824, 0.803921569],
                [0.607843137, 0.431372549, 0.666666667],
                [0.470588235, 0.156862745, 0.509803922]]
    bin_size = (maximum - minimum) / n_colours
    
    # Loop through colour intervals
    for i in range(n_colours):
        
        lower = minimum + (i + 1) * bin_size
        upper = lower + bin_size
        colour = colours[i]
        
        # Print out B-factor limits and the colour for this group
        print(lower, " - ", upper, " = ", colour)
        
        # Define a unique name for the atoms which fall into this group
        group = selection + "_group_" + str(i + 1)
        
        # Compose a selection command which will select all atoms which are
        #	a) in the original selection, AND
        #	b) have B factor in range lower <= b < upper
        sel_string = selection + " & ! b < " + str(lower)
        
        if(i < n_colours):
            sel_string += " & b < " + str(upper)
        else:
            sel_string += " & ! b > " + str(upper)
        
        # Select the atoms
        cmd.select(group, sel_string)
        
        # Create a new colour
        colour_name = "colour_" + str(i + 1)
        cmd.set_color(colour_name, colour)
        
        # Colour them
        cmd.color(colour_name, group)
    
    
    # Create new colour for insufficient sequences
    # RGB_colour = [255,255,150]
    insuf_colour = [1, 1, 0.588235294]
    cmd.set_color("insufficient_colour", insuf_colour)
    
    # Colour atoms with B-factor of 10 using the new colour
    cmd.select("insufficient", selection + " & b = 10")
    cmd.color("insufficient_colour", "insufficient")




# Make command available in PyMOL
cmd.extend("colour_consurf_CBS", colour_consurf_CBS)
colour_consurf_CBS()

# Make all groups unselected
cmd.deselect()
