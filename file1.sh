#!/bin/bash

echo "Enter marks for subject 1:"
read m1
echo "Enter marks for subject 2:"
read m2
echo "Enter marks for subject 3:"
read m3
echo "Enter marks for subject 4:"
read m4

per=$(echo "scale=2; ($m1 + $m2 + $m3 + $m4) / 4.0" | bc)

if [ $m1 -ge 35 ] && [ $m2 -ge 35 ] && [ $m3 -ge 35 ] && [ $m4 -ge 35 ]; then
    if (( $(echo "$per >= 90" | bc -l) )); then
        echo "Distinction"
    elif (( $(echo "$per >= 75" | bc -l) )); then
        echo "First Class"
    elif (( $(echo "$per >= 60" | bc -l) )); then
        echo "Second Class"
    else
        echo "Pass"
    fi
else
    echo "Fail"
fi

