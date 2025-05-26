#!/bin/bash

#################################################
#
# Author: Johnson
# Date: 26-05-25
#
# Script to show files and folders recursively
#
# Version: 1.0
################################################


if [ -z "$1" ]; then
	echo "Usage: $0 <directory>"
	exit 1

fi

DIRECTORY=$1
FILE="files.txt"

echo "The files and folders in $DIRECTORY are"

find "$DIRECTORY" > $FILE
