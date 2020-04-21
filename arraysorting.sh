#!/bin/bash

#FUNCTION TO FIND SECOND LARGEST ELEMENT IN THE ARRAY
second_largest_element()
{
	#INSERT THE ELEMENTS IN THE FIRST ARRAY
	for((index1=0; index1<10; index1++))
	do
		array1[index1]=$(( RANDOM%900+100 ))
	done
	
	#DISPLAY THE FIRST ARRAY
	echo "${array1[@]}"

	#LENGTH OF THE FIRST ARRAY
	length=${#array1[@]}

	#COMPARE AND SORT THE ELEMENTS IN FIRST ARRAY
	for((index2=0; index2<$length; index2++))
	do
		for((index3=$(($index2+1)); index3<$length; index3++))
		do
			if((${array1[index2]}>${array1[index3]}))
			then
				temp=${array1[index2]}
				array1[index2]=${array1[index3]}
				array1[index3]=$temp
			fi
		done	
	done

	#DISPLAY THE SORTED ARRAY
	echo "${array1[@]}"

	largest_element=${array1[9]}
	second_largest_element=${array1[8]}

	#DISPLAY THE LARGEST AND SECOND LARGEST ELEMENT IN FIRST ARRAY
	echo "largest no. : $largest_element"
	echo "second largest no. : $second_largest_element"
}

#FUNCTION TO FIND SECOND SMALLEST ELEMENT IN THE ARRAY
second_smallest_element()
{
	#INSERT THE ELEMENTS IN THE SECOND ARRAY
	for((index=0; index<10; index++))
	do
		array2[index]=$(( RANDOM%900+100 ))
	done

	#DISPLAY THE SECOND ARRAY
	echo "${array2[@]}"

	#LENGTH OF SECOND ARRAY
	length=${#array2[@]}

	#COMPARE AND SORT THE ELEMENTS IN THE SECOND ARRAY
	for((index=0; index<$length; index++))
	do
		for((index2=$(($index+1)); index2<$length; index2++))
		do
			if((${array2[index]}>${array2[index2]}))
			then
				temp=${array2[index]}
				array2[index]=${array2[index2]}
				array2[index2]=$temp
			fi
		done
	done

	#DISPLAY THE SORTED ARRAY
	echo "${array2[@]}"

	smallest_element=${array2[0]}
	second_smallest_element=${array2[1]}

	##DISPLAY THE SMALLEST AND SECOND SMALLEST ELEMENT IN SECOND ARRAY
	echo "smallest no. : $smallest_element"
	echo "second smallest no. : $second_smallest_element"
}

#FUNCTIONS CALL
second_largest_element
second_smallest_element
