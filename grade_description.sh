#!/bin/bash

read -p "Enter grade (A/B/C/D/F): " grade

case $grade in
	A) echo "Excellent! Great job!" ;;
	B) echo "Good job! Keep it up!" ;;
  	C) echo "Fair. You can do better!" ;;
  	D) echo "You need to work harder!" ;;
  	F) echo "Sorry, you failed. Better luck next time!" ;;
  	*) echo "Invalid grade. Please enter A, B, C, D, or F." ;;
esac

