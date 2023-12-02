#!/bin/bash

num=$1
str=""

# Compruebo la condición y concateno
# la string si se cumple, si no, se pasa
# a la siguiente condición
(( $num % 3 == 0 )) && str+="Pling"
(( $num % 5 == 0 )) && str+="Plang"
(( $num % 7 == 0 )) && str+="Plong"

if [[ $str == "" ]]; then
    echo $num
else
    echo $str
fi
