#!/bin/bash 

# -gt ---> greater than 
# -lt ---> lesst than 
# -eq ---> equal 
# -ne ---> not equal


number=5

if [ $number -gt 10 ]
then 
    echo "the $number is greater"
else  
    echo "the $number is smaller"
fi
