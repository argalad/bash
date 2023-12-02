#!/bin/bash

error_handling()
{
    echo $1
    exit 1
}

[[ $# -ne 1 ]] && error_handling "Usage: error_handling.sh <person>" || echo "Hello, $1"
