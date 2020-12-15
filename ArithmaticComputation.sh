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
echo "The Dictionary contains values: ${results[@]}"

#Reading the values from Dictionary and storing into the Array
declare -a resultsArray

for result in ${results[@]}
do
	resultsArray[index++]=$result
done
echo "The Array contains Element: ${resultsArray[@]}"

#Sorting the results in Descending order

for index in ${!resultsArray[@]}
do
	for count in ${!resultsArray[@]}
	do
		if [[ ${resultsArray[index]} -gt ${resultsArray[count]} ]]
		then
			temp=${resultsArray[index]}
			resultsArray[index]=${resultsArray[count]}
			resultsArray[count]=$temp
		fi
	done
done
echo "Results in Descending order ${resultsArray[@]}"
