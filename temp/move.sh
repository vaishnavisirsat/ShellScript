#!/bin/bash -X

for files in `ls *.txt`;
do
	folderName=`echo $file | awk -F. '{print $1}'`;
	mkdir $folderName;
	mv $file $folderName;
done
