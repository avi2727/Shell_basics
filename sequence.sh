#!/bin/bash -x

INCH1=12
echo "1 feet is equal to $INCH1 inch"
METER=0.3048
ACRE=0.000247

#INCH TO FEET CONVERSION
echo "Conversion of inch to feet :"
read -p "Enter the values of inch :" inch2
echo $inch2
echo "scale=1;$inch2/$INCH1"|bc

#FEET TO METER CONVERSION
echo "conversion of feet to meter"
read -p "enter the value of length in feet :" feet1 
read -p "enter the value of width in feet :" feet2

length=$(echo "scale=1;$feet1*$METER"|bc)
width=$(echo "scale=1;$feet2*$METER"|bc)

area1=$(echo "scale=1;$length*$width"|bc)
echo "area of rectangle is $area1 sq metre"

#SQUARE METER TO ACRE CONVERSION
echo "conversion of square meter to acre"
area2=$(echo "scale=1;$area1*$ACRE"|bc)
echo "area of 25 plots in acres:"
echo "scale=1;$area2*25"|bc
