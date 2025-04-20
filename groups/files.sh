#!/bin/bash

read -p "Enter the name of the folder: " folder
if  [ -d "$folder" ]; then 
	echo "Folder exist."
	exit 1
else
	mkdir "$folder"
	echo "You have created "$folder" "
fi

read -p "Enter no of files to be created inside this "$folder":" num

for  ((i=1;i<=num;i++)); do
	touch "$folder/file$i.txt"
	echo "file$i.txt is created"
done

echo "All $num files created successfully in $folder."

