#!/bin/bash

armstrong_sum() 
{
    n=$1
    len=${#n}
    sum=0
    
    while [ "$n" -gt 0 ]; do
        digit=$(( n % 10 ))
        sum=$(( sum + digit ** len ))
        n=$(( n / 10 ))
    done

    (( $1 == sum )) && echo "true" || echo "false"
}

armstrong_sum $1
