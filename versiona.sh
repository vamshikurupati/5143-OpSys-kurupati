#!/bin/bash
echo "enter the file name"
read file1
now=$(date +'%d-%m-%Y')
cp $file1 "$now"_"$file1"

