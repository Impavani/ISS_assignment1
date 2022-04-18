#!/bin/bash
echo "enter file name"
read file
while read line
do
if [[ ! -z $line ]]
then
    a=($( echo "${line[@]}" | cut --complement -d "~" -f1 ))
    b=($( echo "${line[@]}" | cut -d "~" -f1 ))
    echo "["${a[@]}"]" "once said," "[\""${b[@]}"\"]" >>speech.txt
fi
done <$file 