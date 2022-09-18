#!/usr/bin/bash

files=0
#----spacing----
echo "        "
#---Heading---
echo "-------FILE MANIPULATION--------"
#----spacing----
echo "        "
while [ $files -lt 4 ]
do

	echo "Please choose an option: "
	echo "1) Creating a new file."
	echo "2) Modifying a file."
	echo "3) Exit."
	read files

	case $files in
	1) echo "  "
	   echo "----Creation of File-----"
	   echo "  "
	   echo "Enter a name for the file?:"
	   read fileName
	   touch $fileName
	;;
	2) echo "  "
	   echo "---Modifying File----"
	   echo "  "
	   echo "Enter a file to be modified."
	   read orgfile
	   echo "Please choose an option."
	   echo "  "
	   echo "1) Copying  a file."
	   echo "2) Editing a file. "
	   echo "3) Changing permission of a file."
	   echo "4) Exit."
	   read modfil

	case $modfil in
	1) echo "  "
	   echo "----Copying a file----"
	   echo "  "
	   echo "Enter name of file to be copied."
	   read targfile
	   mkdir $targfile
	   cp $orgfile $targfile
	;;
	2) echo "  "
	   echo "----Editing a file-----"
	   echo "Enter name of file to edit:"
	   read orgfile
	   vi $orgfile
	;;
	3) echo "  "
	   echo "----Changing permision----"
	   echo "  "
	   echo "Enter file you wish to change permission:"
	   read orgfile
	   chmod "755" $orgfile
	   echo "----Changed to default----"
	;;
	4) echo "  "
	   echo "----Exiting----"
	   echo "  "
	   exit
	;;
	esac
done
