#!/bin/bash
echo "
█▀▀ ▄▀█ █░░
█▄▄ █▀█ █▄▄"
echo "this is a script that installs BC for you"
echo "do you wish to continue? (ctrl+c= no   password= yes) bc is required to run CAL"

if command -v apt &> /dev/null; then
    sudo apt update && sudo apt install -y bc
elif command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm bc
elif command -v dnf &> /dev/null; then
    sudo dnf install -y bc
elif command -v brew &> /dev/null; then
    brew install bc
else
    echo "Could not find a supported package manager (apt, pacman, dnf, brew)."
    echo "Please install 'bc' manually!"
    exit 1
fi

echo "bc installed successfully!"
