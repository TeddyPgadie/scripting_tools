#!/bin/bash

#Description : File Permission
#Author : Ted Gadie
#Title :  DevOps Engineer

#_________________________________________________________________________
#
#    Requirement to use the script efficiently:
#    ------------------------------------------
#
#cd ~
#mkdir bash_script
#cd bash_script  (save all your scripts in this directory "bash_script" including the script chmodX.sh )
#vi chmodX.sh  (copy and paste this script into chmodX.sh)
# save and quit --> :wq!
#pwd
#Your path should be: "/root/bash_script"

#to run the command outside of the directory bash_script
#run : bash bash_script/chmodX.sh
#to run the command inside of the directory bash_script
#run :  ./chmodX.sh or bash chmodX.sh

#The chmodX.sh script will give execute permission to owner, group and
#others to all files in the directory bash_script
#_________________________________________________________________________
#

chmod +x ./bash_script/*
if [[ $? -eq 1 || $? -eq 2 ]]
then 
	echo
	echo "Oops ! you're in the bash_script directory. "
	echo "ignore the error message above the script will run..."
	cd ..
	chmod +x ./bash_script/*
	echo
	echo " script successfully executed"
	echo "All Files permissions changed to execute"
	echo "Type the command: ll to verify."
else 
	echo "All Files permissions changed to execute"
	echo "Type the command: ll bash_script to verify."
fi
