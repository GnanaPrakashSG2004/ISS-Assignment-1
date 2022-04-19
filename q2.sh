#!/bin/bash
echo  > speech.txt
while read -r line
do
  if [[ "$line" == "$NL" ]]
  then 
    continue
  else
    echo "$(echo -n $line | cut -d~ -f2 | sed 's/ *$//g') once said \"$(echo -n $line | cut -d~ -f1 | sed 's/ *$//g')\"" >> speech.txt
  fi
done < quotes.txt