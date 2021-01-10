#!/bin/bash -x

function myfun ()
{
sd=0
rev=""
on=$n
 
while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))  
    n=$(( $n / 10 ))  
      rev=$( echo ${rev}${sd} ) 
done
 
if [ $n -eq $rev ];
then
  echo "Number is palindrome" ${rev[@]}
else
  echo "Number is NOT palindrome"
fi
}
for (( n=1; n<=100; n++ ))
do
	myfun 
done
