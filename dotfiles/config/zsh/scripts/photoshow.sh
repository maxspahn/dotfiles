foldername=$1
echo $foldername
bash ~/.config/zsh/scripts/print_info.sh
feh -Z --scale-down \
  --action1 "bash ~/.config/zsh/scripts/save_video_and_image.sh '%f'" \
  --action2 "bash ~/.config/zsh/scripts/save_image_delete_video.sh '%f'" \
  --action3 "bash ~/.config/zsh/scripts/save_video_delete_image.sh '%f'" \
  --action9 ";bash ~/.config/zsh/scripts/show_video_to_image.sh '%f'" \
  --action8 "bash ~/.config/zsh/scripts/delete_video_and_image.sh '%f'" \
  --action ";bash ~/.config/zsh/scripts/print_info.sh"
