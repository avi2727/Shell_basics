#!/bin/bash -x

count=0

#TAKE USER INPUT
read -p "Enter the number :" num

#CONDITION CHECK
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
