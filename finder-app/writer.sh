#!/bin/bash
#
# Create a new file writefile and write writestr to it.
#
# Arguments:
# writefile - file (with absolute path) to create
# writestr - string to write to writefile
#
# Return values:
# 1 - error, message to std out

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
	echo "Incorrect number of arguments."
	echo "Two arguments required: (1) full path to a file, (2) text string to write"
	exit 1
fi

# the % removes the suffix from the name, matching on /*, leaving the path
mkdir -p ${writefile%/*}
touch ${writefile}
echo ${writestr} > ${writefile}

