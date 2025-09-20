#!/bin/bash

# ---------------- GLOBAL VARIABLES --------------- #
save_file="$HOME/.finances"
save_path=$(realpath "$save_file")
arg1=$1
arg2=$2

# ----------------- FUNCTION DEFS ----------------- #

# Returns the user 'guide' string
user-guide () {
	local guide="This is the user guide."
	echo "$guide" # Send guide string to stdout
}

# Validate and return user's second argument as record description and amount
validate-record () {

	# Loop while second argument is either empty or not of correct form.
	#
	# To validate record argument of form "RECORD {-}00{.00}":
	# 			.*" "+  # Match one or more character before one or more space character
	# 			   \-?	# Negative sign optional
	# 	   [0-9][1-9]*  # Match zero or more characters between 1-9 after a character 0-9
	# (\.[0-9][1-9]*)?  # If optional decimal input, match zero or more 1-9 after 0-9
	while [[ -z $arg2 || ! $arg2 =~ ^.+" "+\-?[0-9][1-9]*(\.[0-9][0-9]*)?$ ]]; do
		# Output error prompt and read new input
		printf -v error "Invalid record!\nTry again (no quotes necessary): "
		read -p "$error" arg2
	done

	echo "$arg2"
}

# Validate and return user's second argument as record description only
validate-record-description () {

	# Loop while second argument is empty
	while [ -z "$arg2" ]; do
		# Output error prompt and read new input
		printf -v error "Empty record description!\nTry again (no quotes necessary): "
		read -p "$error" arg2
	done

	echo "$arg2"
}

# Add a record to finances
add () {
	# Validate and save record to file
	record="$(validate-record)"
	echo "$record" >> "$save_file"

	# Output save path
	printf "Saved \"%s\" to %s\n" "$record" "$save_path"
}

# Remove a record to finances
remove () {
	# Validate whether a record description was given
	record="$(validate-record-description)"

	# If no matches in .finances
	matching_lines=$(grep "$record" "$save_file")
	if [ -z "$matching_lines" ]
	then
		printf "Remove unsuccessful! No records matching description \"%s.\"\n" "$record"
	else
		# Create string with lines of .finances not including those with record description
		finances_no_record=$(grep -v "$record" "$save_file")

		# Overwrite .finances file with new grep string
		echo "$finances_no_record" > "$save_file"
		printf "Removed \"%s\" from %s\n" "$matching_lines" "$save_path"
	fi
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

# Validate first argument
case $arg1 in

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