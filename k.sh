#!usr/bin/env bash
count=0
if [[ ! -d k.shdir ]];
then
mkdir  k.shdir
fi
# touch k.shdir/output
: > k.shdir/output
while :
    do
    ./j.sh &>> k.shdir/output
    ret=$?
    # count=$($count + 1 )
    let count+=1
    if [[  $ret == 1 ]]  ; then :
    echo "totally run for $count times" >>k.shdir/output
    cat k.shdir/output | tail -n 10
    break
    fi
done
