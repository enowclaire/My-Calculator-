#!/bin/bash

# Debug mode
# set -x

clear

# Define colors
Red='\033[1;31m'
Green='\033[1;32m'
Blue='\033[1;36m'
Yellow='\033[1;33m'
NC='\033[0;m'

echo -e "${Blue}"
# Print a Welcome message

if [ -f /usr/games/cowsay ] 
then
	cowsay "Welcome"
	echo -e "\t..To Newera Calculator App"

else
	echo "Welcome to Newera Calculator App"
fi



echo -e "${NC}"


# Calculation function
calculate() {
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo -e "${Green}$num1 $1 $num2 = $(echo $(( $num1$1$num2 )))${NC}" 
}

# Display options menu
PS3="Please select an option: "
select option  in Addition Subtraction Multiplication Division Quit 
do
	case $option in
		Addition)
			calculate "+"
			;;
		Subtraction)
			calculate "-"
			;;
		Multiplication)
			calculate "*"
			;;
		Division)
			calculate "/"
			;;
		Quit)
			echo -e ${Yellow}
			# Print a goodbye message
			if [ -f /usr/games/cowsay ]
			then
				cowsay "Goodbye"
			else
				echo "Goodbye"
			fi
			sleep 1
			echo -e ${NC}

			exit $?
	esac

done

