#!/bin/bash -x
echo "Welcome To Arithmatic Computation"

read -p "Enter First value: " input1
read -p "Enter Second value: " input2
read -p "Enter Third value: " input3

operation1=$(( input1 + input2 * input3 ))
