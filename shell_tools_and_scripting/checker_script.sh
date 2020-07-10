#!/bin/bash

./failing_script

if [[$? -eq 0]]; then
    ./$0
else
    


