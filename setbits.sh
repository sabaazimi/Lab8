#!/bin/bash

let "a=$1&1"
let "b=($1>>1)&1"
let "c=($1>>2)&1"
let "d=($1>>3)&1"
if [ $a -eq 1 ]
then
	gpio write 0 1
fi

if [ $b -eq 1 ]
then
	gpio write 1 1
fi
if [ $c -eq 1 ]
then
	gpio write 2 1
fi
if [ $d -eq 1 ]
then
	gpio write 3 1
fi

echo "$a $b $c $d"





sleep 10s

for i in {0..3}
	do
		
		gpio write $i 0
	done
	
