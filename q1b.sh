#!/bin/bash
echo "enter file name"
read file
awk '!seen[$0]++' $file