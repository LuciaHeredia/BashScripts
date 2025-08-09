#!/bin/bash

# Collatz Conjecture: Can every number find its way to 1?
# You get a positive integer and..: 
# - If it's even, divide it by 2.
# - If it's odd, multiply it by 3 and add 1.
# Repeat these steps with the result, continuing indefinitely.
# Example: You picked 12:
# 12 ➜ 6 ➜ 3 ➜ 10 ➜ 5 ➜ 16 ➜ 8 ➜ 4 ➜ 2 ➜ 1
# It took 9 steps to reach 1. You return 9.

main() {
    local num="$1" steps=0
    
    if (( num <= 0 )); then
            echo "Error: Only positive numbers are allowed"
            exit 1
    fi

    while (( num != 1 )); do
        if (( num % 2 == 0)); then
            # Even number: divide it by 2.
            (( num = num / 2 ))
        else
            # Odd number: multiply it by 3 and add 1.
            (( num = num*3 + 1 ))
        fi
        (( steps++ ))
    done

    echo "$steps"
}

# call main with all positional arguments
main "$@"