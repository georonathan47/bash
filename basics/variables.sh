#!/bin/bash

greeting="Hello"
# whonami is an internal bash variable that contains the name of the current user
name=$(whoami)
date=$(date +%A)

echo "$greeting $name, today is $date"
echo "Your bash shell version is: $BASH_VERSION. Enjoy!"
