#!/bin/bash

##############################################################
#
# Author: Johnson
# Date: 27-05-25
#
# Script to delete files in a given directory older than 5 days
#
# Version: 1.0
###############################################################

set -x

if [ $# -eq 0 ];
then
	echo "Usage: $0 <directory>"
	exit 1
fi

DIRECTORY=$1
NO_OF_DAYS=5

echo "Files going to be deleted are:"
find "$DIRECTORY" -type f -mtime +$NO_OF_DAYS -exec rm -v {} \;
