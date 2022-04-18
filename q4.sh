#!/bin/bash
IFS=','
arr=( $@ )
size=${#arr[*]}
swapBit=1

#Bubble Sort Implementation
for ((i=0; i<$size-1; i++))
do
    swapBit=0
    for ((j=0; j<$size-$i-1; j++))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[$j]}
            arr[$j]=${arr[$j+1]}
            arr[$j+1]=$temp
            swapBit=1
        fi
    done

    if [[ $swapBit -eq 0 ]]
    then
        break
    fi
done

echo ${arr[@]}