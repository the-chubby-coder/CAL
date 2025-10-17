#!/bin/bash
clear
# Check if bc is already installed
if ! command -v bc &> /dev/null; then
    clear
    bash bc.sh
else
    clear
fi
# Simple calculator script
echo "
█▀▀ ▄▀█ █░░
█▄▄ █▀█ █▄▄"
echo "A simple calculator script with addition, subtraction, multiplication & division"
echo "Enter two numbers (positive integers):"
# Read and validate first number
while true; do
    echo " ctrl+c to close"
    read -p "1st number: " num1
    if [[ $num1 =~ ^[0-9]+$ ]]; then
        break
    else
        echo "Error: Please enter a valid positive integer."
    fi
done
# Read and validate second number
while true; do
    read -p "2nd number: " num2
    if [[ $num2 =~ ^[0-9]+$ ]]; then
        break
    else
        echo "Error: Please enter a valid positive integer."
    fi
done
clear
# Display operation menu
echo "Select an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
read -p "Enter choice (1-4): " choice
clear
case $choice in
    1)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $num1 + $num2 = $result"
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $num1 - $num2 = $result"
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $num1 * $num2 = $result"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed!"
        else
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $num1 / $num2 = $result"
        fi
        ;;
    *)
        echo "Invalid choice! Please select a number between 1 and 4."
        ;;
esac
echo "Press any key to restart program..."
read -s -n 1
bash cal.sh