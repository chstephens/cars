#!/bin/bash
#cars.sh
#

while true
do
	# display menu
	echo "What would you like to do?"
	echo "1) Add a new car"
	echo "2) View cars in inventory"
	echo "3) Exit program"

	#get user input 
	read choice
	#perform operation based upon variable provided 
	

	case $choice in
		1)
			echo "Enter the year of car: "
			read year
	
			echo "enter make of car: "
			read make
	
			echo "enter model of car: "
			read model
	
			# add car details to My_old_cars file
			echo "$year":$make":$model" >> My_old_cars
			;;
		2)	
      			sort -t'"' -k1 -n My_old_cars
			;;
		3)
			#prints "goodbye" and exits program
			echo -"Goodbye!"
			exit
			;;
		*)		
			echo "invalid input"
			;;	
	esac
	echo ""
done
	
