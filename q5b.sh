#!/bin/bash
echo $1 | rev | tr 'a-yA-YzZ' 'b-zB-ZaA'