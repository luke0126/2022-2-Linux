#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
then
	echo invalid input
	exit 0
elif [ $1 -le 0 ] || [ $2 -le 0 ] 
then
	echo Input must be greater than 0
	exit 0
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		printf "${i}*${j}=`expr $i \* $j` \t"
	done
	echo 
done
exit 0

