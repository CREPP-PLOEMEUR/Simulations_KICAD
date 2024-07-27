#!/bin/bash

if ! command -v zip &> /dev/null
then
    echo "'zip' command is not installed."
    exit 1
fi

for dir in */
do
    #Remove final / 
    dir=${dir%/}
    
    zip -r "${dir}.zip" "$dir"
done

echo "Done !" 
