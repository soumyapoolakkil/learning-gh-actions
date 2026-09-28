#!/bin/bash

set -e

echo "Generating ASCII artwork..."

# Install cowsay if it is not already installed
if ! command -v cowsay >/dev/null 2>&1; then
    echo "cowsay not found. Installing..."

    sudo apt-get update
    sudo apt-get install -y cowsay
fi

# Generate artwork.txt
cowsay "Hello from GitHub Actions!" > artwork.txt

# Display the generated artwork
echo ""
echo "Generated artwork.txt:"
echo "-----------------------"
cat artwork.txt
echo "-----------------------"

echo "Done!"
