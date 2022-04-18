read s
strlen=${#s}
i=$((strlen/2-1))
while [ $i -ge 0 ]
do
    revstr=$revstr${s:$i:1}
    i=$((i-1))
done
x=$((strlen/2-1))
#echo "Original String : $s"
echo "$revstr"${s:x+1:x+1}
