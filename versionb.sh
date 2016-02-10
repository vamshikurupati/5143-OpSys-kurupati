#!/bin/bash
new=$( date +'%Y-%m-%d')
file=$1
a=${file%.*}
b=${file##*.}
echo $a
echo $b
touch "$a"_"$new"."$b"


