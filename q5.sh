#!/bin/bash
echo $1 | rev
echo $1 | rev | tr 'a-yA-YzZ' 'b-zB-ZaA'
var=$1
printf '%s\n' "${var:0:${#var}/2}" > temp.txt
echo -n $(cat temp.txt) | rev && printf '%s\n' "${var:${#var}/2}" && rm temp.txt