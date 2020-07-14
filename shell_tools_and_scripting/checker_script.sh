#!/bin/bash

count=0

while :
do
    out="$(/Users/sajal/learning/missing-semester/shell_tools_and_scripting/failing_script.sh 2>&1)"
    if [[ $? -eq 0 ]]; then
        ((count++))
    else
        echo "$out" | tee output.txt
        echo "Failed after $count runs."
        break
    fi
done

