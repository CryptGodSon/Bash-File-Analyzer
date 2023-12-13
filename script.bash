#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Provide a directory path as an argument."
    exit 1
fi

directory=$1

if [ ! -d $directory ]; then
    echo "Directory $directory does not exist."
    exit 1
fi

free_space=$(df -h $directory | awk 'NR==2 {print $4}')
total_space=$(du -sh $directory | awk '{print $1}')

echo "Free disk space: $free_space"
echo "Occupied space by all files: $total_space"

echo "Percentage distribution of file extensions:"
find $directory -type f | awk -F. '{print $NF}' | sort | uniq -c | while read count ext; do
    percent=$(echo "scale=2; $count/$(find $directory -type f | wc -l) * 100" | bc)
    echo "$ext: $percent%"
done
