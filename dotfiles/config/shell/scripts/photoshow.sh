foldername=$1
echo $foldername
bash ~/.config/shell/scripts/print_info.sh
feh -Z --scale-down \
  --action1 "bash ~/.config/shell/scripts/save_video_and_image.sh '%f'" \
  --action2 "bash ~/.config/shell/scripts/save_image_delete_video.sh '%f'" \
  --action3 "bash ~/.config/shell/scripts/save_video_delete_image.sh '%f'" \
  --action9 ";bash ~/.config/shell/scripts/show_video_to_image.sh '%f'" \
  --action8 "bash ~/.config/shell/scripts/delete_video_and_image.sh '%f'" \
  --action ";bash ~/.config/shell/scripts/print_info.sh"
