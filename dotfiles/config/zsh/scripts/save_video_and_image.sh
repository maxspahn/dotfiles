filename=$1
f="${filename%.*}"
image=$filename
video="$f.MOV"
mv $image ~/Pictures/iphone_images
if test -f "$video"; then
  mv $video ~/Videos/iphone_videos
else
  echo "No video to this photo."
fi
