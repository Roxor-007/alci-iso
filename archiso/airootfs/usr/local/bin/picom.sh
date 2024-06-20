#!/bin/bash

# Define the source and destination paths
SOURCE="/usr/local/bin/picom.conf"
DESTINATION="/etc/xdg/picom.conf"

# Check if the source file exists
if [ ! -f "$SOURCE" ]; then
    echo "Source file not found: $SOURCE"
    exit 1
fi

# Create the destination directory if it doesn't exist
sudo mkdir -p /etc/xdg

# Copy the file to the destination
sudo cp "$SOURCE" "$DESTINATION"

# Verify the copy was successful
if [ -f "$DESTINATION" ]; then
    echo "File copied successfully to $DESTINATION"
else
    echo "Failed to copy the file"
    exit 1
fi

