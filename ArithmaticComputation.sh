#!/bin/bash -x
echo "Welcome To Arithmatic Computation"

read -p "Enter First value: " input1
read -p "Enter Second value: " input2
read -p "Enter Third value: " input3

operation1=$(( input1 + input2 * input3 ))
operation2=$(( input1 * input2 + input3 ))
operation3=$(( input3 + input1 / input2 ))
operation4=$(( input1 % input2 + input3 ))

#Storing the expressions result in a dictionary
declare -A  results

results[result1]=$operation1
results[result2]=$operation2
results[result3]=$operation3
results[result4]=$operation4

echo ${results[@]}
