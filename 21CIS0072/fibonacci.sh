#!/bin/bash

# Ask user for input
echo "Enter a number:"
read N

# Initialize first two Fibonacci numbers
a=0
b=1

echo -n "Fibonacci series: $a $b "

# Generate Fibonacci series up to N
for (( i=2; i<N; i++ ))
do
    fib=$((a + b))
    echo -n "$fib "
    a=$b
    b=$fib
done

echo ""
