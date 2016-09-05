ffmpeg -i input_video.mp4 -ss 30 -t 10 -c copy cropped.mp4
convert -depth 8 -resize 50% -background transparent plate.svg plate.png
ffmpeg -i cropped.mp4 -i plate.png -filter_complex "overlay=enable='between(t,1,9)':x=0:y=446" plated.mp4
ffmpeg -i plated.mp4 -filter_complex "drawtext=enable='between(t,1,9)':fontsize=30:fontfile=Arial.ttf:x=200:y=476:text='Hello, stepik!':fontcolor=black" result.mp4