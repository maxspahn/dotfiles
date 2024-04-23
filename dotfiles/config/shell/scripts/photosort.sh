foldername=$1
echo $foldername
bash ~/.config/zsh/scripts/print_sort_info.sh
feh -Z --scale-down \
  --action1 "bash ~/.config/zsh/scripts/move.sh '%f' ~/harddrive/Bilder/Luna/" \
  --action2 "bash ~/.config/zsh/scripts/move.sh '%f' ~/harddrive/Bilder/Merle" \
  --action3 "bash ~/.config/zsh/scripts/move.sh '%f' ~/harddrive/Bilder/Max" \
  --action4 "bash ~/.config/zsh/scripts/move.sh '%f' ~/harddrive/Bilder/family" \
  --action5 "bash ~/.config/zsh/scripts/move.sh '%f' ~/harddrive/Bilder/Delft" \
  --action ";bash ~/.config/zsh/scripts/print_sort_info.sh"
