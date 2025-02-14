#!/bin/bash

<<comment
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
	1, 2, 3, 5, 8, 13, 21, 34, 55, 89,...
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
comment

last_term=2
penultimate_term=1
current_term=0
LIMIT=4000000
SUM=2

echo "${penultimate_term}"
echo "${last_term}"

while [ $current_term -lt $LIMIT ]
do
	current_term=$((last_term+penultimate_term))
	if [ $current_term -ge $LIMIT ]; then
		break
	fi
	penultimate_term=$last_term
	last_term=$current_term
        if [ $((current_term%2)) -eq 0 ]; then
                SUM=$((SUM+current_term))
        fi


done

echo "${SUM}"

