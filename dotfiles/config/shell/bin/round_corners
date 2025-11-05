#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Usage: ./round_corners.sh <input_filename> <radius ratio>"
    echo "Example: ./round_corners.sh input.png 0.1"
    exit 1
fi

# Sample input string
input_filename="$1"
radius_percentage="$2"
input_string=$(file $input_filename)
output_filename="${input_filename%.*}_rounded.png"


# Extract the resolution using grep
resolution=$(echo "$input_string" | grep -oP '\d+ x \d+')

# Extract the width and height separately using awk
width=$(echo "$resolution" | awk -F' x ' '{print $1}')
height=$(echo "$resolution" | awk -F' x ' '{print $2}')

# Calculate the radius given the percentage
radius=$(echo "$radius_percentage*$width" | bc)

# Print the results
echo "Resolution: $resolution"
echo "Width: $width"
echo "Height: $height"
echo "Radius Percentage: $radius_percentage"
echo "Radius: $radius"


create_mask="convert -size ${width}x${height} xc:none -draw \"roundrectangle 0, 0,${width},${height},${radius},${radius}\" mask.png"
echo "Executing: $create_mask"

eval "$create_mask"



convert $1 -matte mask.png -compose DstIn -composite $output_filename


