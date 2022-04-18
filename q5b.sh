read s
strlen=${#s}
i=$((strlen-1))
while [ $i -ge 0 ]
do
    revstr=$revstr${s:$i:1}
    i=$((i-1))
done
y=$(echo "$revstr" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
#echo "Original String : $s"
echo "$y"
