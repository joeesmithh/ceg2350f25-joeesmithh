#!/bin/bash

# ----------------- FUNCTION DEFS ----------------- #

# Returns the user 'guide' string
user-guide () {
	local guide="This is the user guide."
	echo "$guide" # Send guide string to stdout
}

# Validates and returns the user's second 'record' argument
arg2=$2
validate-record () {

	# Loop while record is either empty or not of correct form.
	#
	# To validate record argument of form "RECORD {-}00{.00}":
	# 			.*" "+  # Match one or more character before one or more space character
	# 			   \-?	# Negative sign optional
	# 	   [0-9][1-9]*  # Match zero or more characters between 1-9 after a character 0-9
	# (\.[0-9][1-9]*)?  # If optional decimal input, match zero or more 1-9 after 0-9
	while [[ -z $arg2 || ! $arg2 =~ ^.+" "+\-?[0-9][1-9]*(\.[0-9][1-9]*)?$ ]]; do
		# Output error prompt and read new input
		printf -v error "Invalid record!\nTry again (no quotes necessary): "
		read -p "$error" arg2
	done

	echo "$arg2"
}

# Add a record to finances
add () {
	# Validate and save record to file
	record="$(validate-record)"
	echo "$record" >> ~/.finance

	# Output save path
	dir=$(realpath ~/.finance)
	printf "Saved \"%s\" to %s\n" "$record" "$dir"
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