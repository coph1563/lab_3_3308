#!/bin/bash
# Authors : Cole Philipp & Rebecca 
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a File name:"
read fileName
echo "Enter a regular expression:"
read expression
egrep $expression $fileName
# [0-9] find any pattern of numbers 3 long
egrep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" "regex_practice.txt"
#find any characters with @ and any characters with atleast on period followed by two or more characters
egrep -c "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9._%+-]+.+[a-zA-Z]{2}" "regex_practice.txt"
#smae thing i did for the first phone number but with 303 as the first three diggits
egrep -o "(303)+-([0-9]{3})+-+?([0-9]{4})" "regex_practice.txt"
#
egrep "[a-zA-Z0-9._%+-]+@(geocities.com)" "regex-practice" >> "email_results.txt"
