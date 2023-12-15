#!/bin/bash

# Specify the folder containing the images
image_folder=$1

# List of destination folders
base_folder=$2

set_mouse_trap() {
  term_window_id=$(xdotool getactivewindow)
  xdtool mousemove --window "$term_window_id" 0 0
}

term_window_id=$(xdotool getactivewindow)
echo $term_window_id

background_loop() {
  while true; do 
    sleep 0.1
    xdotool mousemove --window $term_window_id 10 0
    xdotool mousemove --window $term_window_id 10 -10
  done
}


# Loop through each image in the folder
for image_file in "$image_folder"/*; do
    feh -Z --scale-down "$image_file" &
    feh_pid=$!
    background_loop &
    background_loop_pid=$!
    sleep 0.5

      # Use fzf to select one or more destination folders

    selected_folders=$(find "$base_folder" -maxdepth 1 -type d | sed '1d' | fzf --prompt="Select destination folders (use TAB to select multiple): " --multi)
    echo $selected_folders

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

