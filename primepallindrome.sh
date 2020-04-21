#!/bin/bash
#INITIALIZE THE VARIABLE
count=0
sum=0

#TAKE USER INPUT
read -p "Enter the number :" number

#FUNCTION TO CHECK THE PALINDROME OF A PRIME NUMBER
prime()
{
	for(( num=1; num<=$1; num++))
	do
		if(( $1%$num==0 ))
		then
          (( count++ ))
		fi
	done
	if(($count==2))
	then
		echo "$1 is a prime number"
#output of prime number is now input of pallindrome to check
		divident=$1
		while(($divident>0))
		do
			remainder=$(($divident%10))
			sum=$(( $(($sum*10)) +$remainder ))
			divident=$(($divident/10))
		done
		if(($sum==$1))
		then
			echo "$1 is a palindrome"
			else
			echo "$1 is not a plindrome"
		fi
	else
		echo "$1 is not a prime number"
	fi
}

#FUNCTION CALL TO DISPLAY THE RESULT
prime $number
