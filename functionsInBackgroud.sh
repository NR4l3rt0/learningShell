#!/usr/bin/bash


greeting(){
    sleep 1
    echo "hello machine"
}

goodbye(){
    sleep 3
    echo "That's all"
}

i=4
round=1
while [ $i -gt 0 ]; do
    echo "round $round" >> roundFile.log
    ((round++))
    goodbye &
    greeting &
    echo "$i"
    sleep 1
    ((i--))
done
wait
echo "finish"
