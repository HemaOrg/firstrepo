#!/bin/bash
set -x
find -type f -size +2k > tmp
while read line 
do
size=`ls -lh "$line" | awk '{print $5}'`
echo "$line - $size"
done < tmp
