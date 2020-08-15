#!/bin/bash -x
valid_inputs=( "abc@yahoo.com" "abc-100@yahoo.com" "abc.100@yahoo.com" 
"abc111@yahoo.com" "abc-100@abc.net" "abc.100@abc.com.au" "abc@1.com" 
"abc@gmail.com.com" "abc+100@gmail.com" ) 
invalid_inputs=( "abc" 
"abc@com.my" "abc123@gmail.a" "abc124@.com" "abc124@com.com" 
".abc@abc.com" "abc()*@gmail.com" "abc@%*.com" "abc..2002@gmail.com" 
"abc.@gmail.com" "abc@abc@gmail.com" "abc@gmail.com.1a" "abc@gmail.com.aa.au")
regex="^([A-Za-z]+[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
 if [[ $1 =~ $regex ]]
then
echo "true"
else
echo "false"
fi
