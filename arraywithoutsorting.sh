
#!/bin/bash -x
#FUNCTION TO FIND SECOND LARGEST ELEMENT IN THE ARRAY
second_largest_element()
{
	#INSERT THE ELEMENTS IN FIRST ARRAY
	for((index1=0; index1<10; index1++))
	do
		array1[index1]=$(( RANDOM%900+100 ))
	done
	
	#DISPLAY THE FIRST ARRAY
	echo "${array1[@]}"

	#LENGTH OF THE FIRST ARRAY
	length=${#array1[@]}
	
	#INITIALIZE THE VARIABLE
	max1=0
	max2=0
	
	#COMPARE AND SWAPE THE ELEMETS IN THE ARRAY TILL THE LARGEST ELEMENT IS TO BE FOUND
	for((index2=0; index2<$length; index2++))
	do
		if((${array1[index2]}>$max1))
		then
			max2=$max1
			max1=${array1[index2]}
		fi

		if((${array1[index2]}>max2 && ${array1[index2]}<max1))
		then
			max2=${array1[index2]}
		fi
	done
	
	#DISPLAY THE LARGEST AND SECOND LARGEST ELEMENT IN THE ARRAY
	echo "Largest element : $max1"
	echo "Second largest element : $max2"
}

#FUNCTION TO FIND SECOND SMALLEST ELEMENT IN THE ARRAY
second_smallest_element()
{
	
	#INSERT THE ELEMENTS IN THE SECOND ARRAY
	for((index3=0; index3<10; index3++))
	do
		array2[index3]=$(( RANDOM%900+100 ))
	done
	
	#DISPLAY THE SECOND ARRAY
	echo "${array2[@]}"

	#LENGTH OF SECOND ARRAY
	length=${#array2[@]}

	#INITIALIZE THE VARIABLES
	min1=${array2[0]}
	min2=${array2[1]}

	#COMPARE AND SWAP THE ELEMENTS IN THE ARRAY
	for((index4=0; index4<$length; index4++))
	do
		if((${array2[index4]}<$min1))
		then
			min2=$min1
			min1=${array2[index4]}
		fi

		if((${array2[index4]}>min1 && ${array2[index4]}<min2))
		then
			min2=${array2[index4]}
		fi
	done

	#DISPLAY THE SMALLEST AND SECOND SMALLEST ELEMENT IN THE ARRAY
	echo "Smallest element : $min1"
	echo "Second smallest element : $min2"
}

#FUNCTIONS CALL 
second_largest_element
second_smallest_element
