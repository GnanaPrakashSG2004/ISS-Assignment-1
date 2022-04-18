#!/bin/bash
var=$1
printf '%s\n' "${var:0:${#var}/2}" > temp.txt
echo -n $(cat temp.txt) | rev && printf '%s\n' "${var:${#var}/2}" && rm temp.txt