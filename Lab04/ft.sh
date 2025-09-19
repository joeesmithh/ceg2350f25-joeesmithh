#!/bin/bash

# ----------------- FUNCTION DEFS ----------------- #

# Returns the user 'guide' string
user-guide () {
	local guide="This is the user guide."
	echo "$guide" # Send guide string to stdout
}






# McDonalds 32.95
# McDonalds 32
# McDonalds 0.95
# McDonalds -32.95









# Validates and returns the user's second record argument
arg2=$2
validate-record () {

	local record=$arg2

	# Loop while record is either empty or not of correct form.
	#
	# To validate record argument of form "RECORD {-}00{.00}":
	# 			.*" "+  # Match one or more character before one or more space character
	# 			   \-?	# Negative sign optional
	# 	   [0-9][1-9]*  # Match zero or more characters between 1-9 after a character 0-9
	# (\.[0-9][1-9]*)?  # If optional decimal input, match zero or more 1-9 after 0-9
	while [[ -z $record || ! $record =~ ^.+" "+\-?[0-9][1-9]*(\.[0-9][1-9]*)?$ ]]; do
		read -p "Invalid record! Try again: " record
	done
	
	echo "$record"
}

# Add a record to finances
add () {
	record="$(validate-record)"
	echo "$record"
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