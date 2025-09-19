#!/bin/bash

# ----------------- FUNCTION DEFS ----------------- #

# Add a record to finances
add () {
	return 1
}

# Remove a record to finances
remove () {
	return 2
}

# View all finance records
view () {
	return 3
}

# Clear all finance records
clear () {
	return 4
}

# Returns the user 'guide' string
user-guide () {
	local guide="This is the user guide."
	echo "$guide" # Send guide string to stdout
}

# Output user guide to console
help () {
	echo "$(user-guide)"
}

# -------------------- PROGRAM -------------------- #

arg=$1

# Validate first argument
case $arg in

	"add")
	add
	;;

	"remove")
	remove
	;;

	"view")
	view
	;;

	"clear")
	clear
	;;

	"help")
	help
	;;

	*)
	echo "Invalid argument!"
	help
	;;

esac