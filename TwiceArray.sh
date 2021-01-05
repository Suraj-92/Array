#!/bin/bash -x
function myfun() {

s=0
rev=""
temp=$number
while [ $number -ne 0 ]
do
   s=$(( $number % 10 ))
   num=$(( $number / 10 ))
   rev=$( echo ${rev}${s} )
	((number++))
	
done
if [ $rev -eq $temp ];
then
   echo "Number is palindrome"
else
   echo "Number is NOT palindrome"
fi
}
for (( number=2; number<=100; number++ ))
do
	
 myfun $number
done
