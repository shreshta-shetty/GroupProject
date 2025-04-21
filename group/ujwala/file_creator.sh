#!/bin/bash

read -p "Enter folder name: " folder
read -p "Enter number of files to create: " num

if [ -d "$folder" ]; then
    echo "Folder exists. Removing it..."
    rm -rf "$folder"
fi

mkdir "$folder"
echo "Created folder: $folder"

for ((i=1; i<=num; i++)); do
    touch "$folder/file_$i.txt"
done

echo "$num files created inside $folder"

