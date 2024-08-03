#!/bin/bash

<<comment
Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
comment

sum_of_multiples=0

for i in `seq 1 999`
do
	if [ $((i%3)) -eq 0 ] || [ $((i%5)) -eq 0 ]; then
		sum_of_multiples=$((sum_of_multiples+i))
	fi
done

echo $sum_of_multiples

