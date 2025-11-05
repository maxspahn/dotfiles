#!/bin/bash
#

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <image_folder> <base_folder>"
    exit 1
fi

# Specify the folder containing the images
image_folder=$1

# List of destination folders
base_folder=$2

term_window_id=$(xdotool getactivewindow)
echo $term_window_id

background_loop() {
  while true; do 
    sleep 0.1
    xdotool mousemove --window $term_window_id 100 200 click 1
    sleep 1.0
  done
}


# Loop through each image in the folder
for image_file in "$image_folder"/*; do
    feh -Z --scale-down "$image_file" &
    feh_pid=$!
    background_loop &
    background_loop_pid=$!
    sleep 1.0

      # Use fzf to select one or more destination folders

    selected_folders=$(find "$base_folder" -maxdepth 1 -type d | sed '1d' | fzf --prompt="Select destination folders (use TAB to select multiple): " --multi)
    echo $selected_folders
    sleep 0.5


    # Validate selected folders
    if [ -n "$selected_folders" ]; then
        # Move the image to each selected folder
        for folder in $selected_folders; do
            echo "Moving image $image_file to $folder"
            cp "$image_file" "$folder/"
        done
        mv "$image_file" "$base_folder/Trash"
    else
        mv "$image_file" "$base_folder/Trash"
        echo "No folders selected. Image moved to Trash."
    fi
    kill "$background_loop_pid" 2>/dev/null
    kill "$feh_pid" 2>/dev/null
done


echo "All images processed."

