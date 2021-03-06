#!/bin/bash

# slimlock

image=/tmp/i3lock.png
rm $image -f
scrot $image
mogrify -scale 10.00% -scale 1000.00% -quality 5 $image
# mogrify -resize 25.00% -resize 400.00% -quality 5 $image
# mogrify -sample 25.00% -sample 400.00% -quality 5 $image
# mogrify -grayscale Rec709Luminance $image
# mogrify -flip $image
i3lock --no-unlock-indicator --ignore-empty-password --beep --dpms -i $image

