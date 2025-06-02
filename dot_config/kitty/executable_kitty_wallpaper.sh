#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Downloads/photos/wallpapers/gibili"

# Path to kitty config
KITTY_CONFIG="$HOME/.config/kitty/kitty.conf"

# Array of images
IMAGES=("$WALLPAPER_DIR"/*)

while true; do
  # Select a random image from the array
  CURRENT_IMAGE="${IMAGES[RANDOM % ${#IMAGES[@]}]}"

  # Update the `image_background` on line 43 in kitty.conf
  sed -i '' "43s#.*#background_image $CURRENT_IMAGE#" "$KITTY_CONFIG"

  # Wait 10 seconds before changing again (or 120 seconds in the final version)
  sleep 1
done

# # Array of images
# IMAGES=("$WALLPAPER_DIR"/*)
# IMAGE_COUNT=${#IMAGES[@]}
# INDEX=0
#
# while true; do
#   # Get the current image in the sequence
#   CURRENT_IMAGE="${IMAGES[$INDEX]}"
#
#   # Explicitly specify path and check for errors
#   sed -i '' "43s#.*#background_image $CURRENT_IMAGE#" "$KITTY_CONFIG" || echo "Error updating kitty config"
#
#   # Reload Kitty configuration to apply the new background immediately
#   kitty @ set-background-image "$CURRENT_IMAGE"
#
#   # Move to the next image in the sequence
#   INDEX=$(((INDEX + 1) % IMAGE_COUNT))
#
#   # Wait 10 seconds before changing again
#   sleep 3
# done
