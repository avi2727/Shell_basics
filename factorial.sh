#!/bin/bash
#taking user input
read -p "Enter a number" num
fact=1

#for loop implimentation

for((i=2;i<=num;i++))
{
  fact=$((fact*i))
}
echo $fact

