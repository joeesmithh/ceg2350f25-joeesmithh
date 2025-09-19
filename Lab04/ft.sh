#!/bin/bash

arg1=$1
action=""

case $arg1 in

	"add")
	echo "add"
	;;

	"remove")
	echo "remove"
	;;

	"view")
	echo "view"
	;;

	"clear")
	echo "clear"
	;;

	"help")
	echo "help"
	;;

esac