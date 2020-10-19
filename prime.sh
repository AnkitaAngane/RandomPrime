#! /bin/bash

#Author: Ankita Angane

count=0
flag=0
var2=1

while [ $var2 -ne 0 ]
do

ranCheck=$((RANDOM%9000+1000))

for(( i=2; i<$ranCheck; i++ ))
do
	if [ $((ranCheck%i)) -eq 0 ]
	then
		count=$((count+1))
		flag=1
	fi
done

#	if [ $flag -eq 1 ]
#        then
#                echo "$ranCheck is not a prime"
#        fi


	if [ $flag -eq 0 ]
	then
		var2=0
		echo "Required Number : " $ranCheck
		echo "Counter : " $count
		break
	fi
flag=0

done
