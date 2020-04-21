#!/bin/bash -x
#DISPLAY THE CHOICES OF UNIT CONVERSIONS
echo "1. feet to inch conversion."
echo "2. feet to meter conversion."
echo "3. inch to feet conversion."
echo "4. meter to feet conversion."

#TAKE USER INPUT
read -p "Enter the choice of above unit conversions :" conversion
convert=$conversion

#CONVERT THE UNITS ACCORDING TO THE CONDITION APPLIED
case "$convert" in
		"1")
			INCH=12
			read -p "Enter the feet value to be converted :" feet1
			echo "feet to inch conversion :"
			echo "scale=1;$INCH*$feet1"|bc
			;;
		"2")
			METER=0.3048
			read -p "Enter the feet value to be converted :" feet2
			echo "feet to meter conversion :"
			echo "scale=1;$METER*$feet2"|bc
 			;;
		"3")
			FEET=0.0833333
			read -p "Enter the inch value to be converted :" inch1
			echo "inch to feet conversion :"
			echo "scale=1;$FEET*$inch1"|bc
			;;
		"4")
			FEET1=3.28084
			read -p "Enter the meter value to be converted : " meter
			echo "meter to feet conversion :"
			echo "scale=1;$FEET1*$meter"|bc
			;;
		*)
			echo "invalid conversion :"
			;;
esac 
