#!/bin/bash

user=$(whoami)
home=/Users/$user
input=$home/Desktop/builds/bash
# we used curly braces because _bashBackup is not part of the initial user variable
output=/tmp/${user}_bashBackup_$(date +%Y-%m-%d_%H:%M).tar.gz

# Backup the home directory to a tar file
tar -czf $output $input 2> /dev/null
# NB: 2> /dev/null redirects the unwanted error output to /dev/null, which is a special file that discards everything written to it.
# This is done because tar outputs a lot of information to stderr, which we don't need to see.

# The function below reports the total number of files in a given directory
function total_files {
  find $1 -type f | wc -l
}

# The function below reports the total number of directories in a given directory
function total_directories {
  find $1 -type d | wc -l
}


echo -n "Files to be added:"
total_files $input
echo -n "Directories to be added:"
total_directories $input
echo "Backup of $input completed!"
echo "Details about the output backup file:"
ls -l $output