#!/bin/bash

user=$(whoami)
home=/Users/$user
input=$home/Desktop/builds/bash
# we used curly braces because _bashBackup is not part of the initial user variable
output=/tmp/${user}_bashBackup_$(date +%Y-%m-%d_%H:%M).tar.gz

# Backup the home directory to a tar file
tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output