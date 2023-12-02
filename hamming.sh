#!/bin/bash


[[ $# -ne 2 ]] && echo "Usage: hamming.sh <string1> <string2>" && exit 1
str1=$1
str2=$2
[[ ${#str1} != ${#str2} ]] && echo "strands must be of equal length" && exit 1

declare -i dist=0
for ((i=0; i <= ${#str1}; i++)); do
    [[ ${str1:i:1} != "${str2:i:1}" ]] && (( dist++ )) # El lado derecho entre comillas para evitar algunos bugs
done

echo $dist
