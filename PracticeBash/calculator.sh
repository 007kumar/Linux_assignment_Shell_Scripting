#!/bin/bash

#To input first number
read -p "Enter the first number: " num1

#To input Second number
read -p "Enter the second number: " num2

#To Select Operator
read -p "Enter the operator (+, -, *, /): " operator

#Perform the calculation based on the operator
case $operator in
	    +)
	        result=$(echo "$num1 + $num2" | bc);;
	    -)
	        result=$(echo "$num1 - $num2" | bc);;
	  '*')
                result=$(echo "$num1 * $num2" | bc);;
            /)
	        # Check if the second number is zero for division
	        if [ "$num2" -eq 0 ]; then
	 		echo "Error: Division by zero is not allowed."
	       		exit 1
		fi
	        result=$(echo "scale=2; $num1 / $num2" | bc)
	        ;;
																						    *)
	        echo "Invalid operator. Please use +, -, *, or /."
	        exit 1
	        ;;
esac

# Display the result
echo " Result is : $num1 $operator $num2 = $result"

