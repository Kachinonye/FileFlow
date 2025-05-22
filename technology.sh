#!/bin/bash

# Define file and directory names
file_name="technology.sh"
dir_name="technology"

echo "Choose an action:"
echo "1) Create the file"
echo "2) Delete the file"
echo "3) Create the directory"
echo "4) Delete the directory"
echo "5) Find the location of the file"
echo "6) Exit"

read -p "Enter your choice (1-6): " choice

case "$choice" in
  1)
    # Create the file with execute permission
    touch "$file_name"
    chmod +x "$file_name"
    echo "File '$file_name' created and made executable."
    ;;
  2)
    # Delete the file
    if [ -e "$file_name" ]; then
      rm "$file_name"
      echo "File '$file_name' deleted."
    else
      echo "File '$file_name' does not exist."
    fi
    ;;
  3)
    # Create the directory
    mkdir -p "$dir_name"
    echo "Directory '$dir_name' created."
    ;;
  4)
    # Delete the directory
    if [ -d "$dir_name" ]; then
      rmdir "$dir_name"
      echo "Directory '$dir_name' deleted."
    else
      echo "Directory '$dir_name' does not exist."
    fi
    ;;
  5)
    # Find where the file is
    if [ -e "$file_name" ]; then
      location=$(find / -name "$file_name" 2>/dev/null)
      echo "File '$file_name' found at: $location"
    else
      echo "File '$file_name' does not exist."
    fi
    ;;
  6)
    echo "Exiting..."
    exit 0
    ;;
  *)
    echo "Invalid choice."
    ;;
esac}
