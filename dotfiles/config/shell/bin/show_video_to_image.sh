filename=$1
f="${filename%.*}"
image=$filename
video="$f.MOV"
if test -f "$video"; then
  mpv $video
else
  echo "No video to this photo."
fi
