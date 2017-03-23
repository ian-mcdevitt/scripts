a=1
for i in *.jpg; do
  new=$(printf "%05d.jpg" "$a")
  mv -- "$i" "$new"
  let a=a+1
done


ffmpeg -framerate 30 -start_number 1 -i %05d.jpg -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p output.mp4
