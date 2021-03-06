#!/bin/bash

wc -c < $1
awk 'END{print NR}' $1
wc -w < $1

awk '{print NF}' $1 > temp.txt
let i=1
while read line
do 
    echo "Line No: $i - Count of Words: $line"
    (( i++ ))
done < temp.txt 
rm temp.txt 

cat $1 | tr ' ' '\n' | sort | uniq -c > temp.txt
awk '{print $2 " " $1}' temp.txt > temp2.txt && rm temp.txt
while read word freq
do
    if  [[ $freq -gt 1 ]]
    then
        echo "Word: $word - Count of repetition: $freq"
    fi
done < temp2.txt
rm temp2.txt