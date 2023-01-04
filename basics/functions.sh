#!/bin/bash

function changeDirectory {
	cd ..
	echo "I have moved to the root folder"
	cd basics
	echo "I just came back to the basics folder"
}

changeDirectory
