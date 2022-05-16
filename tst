#!/bin/bash

# Quickly create a ready-to-execute script for testing

set -e

NAME=$(basename $0)

usage() {
	cat << EOF
	Quickly create a ready-to-executre script for testing.
	
	Usage: $NAME LANG | COMMAND

	Language:
		language extension of the script (e.g. 'sh', 'c', 'go)
		defaults to 'sh'.

	Commands:
		list   - list available templates
        clean  - clean up 
EOF
}

case "$1" in
	help | -h | --help )
		usage
		exit 0 ;;
	list | -l | --list )
		ls $0\. | cut -d. -f2-
		exit 0 ;;
	clean | -c | --clean )
		if test $(dirname $0) == $(pwd); then
			echo "can't remove source files"
			exit 1
		fi
		rm $NAME.*
		exit $? ;;
esac


if [ ! -f $0.${1-sh} ]; then
	echo "no template for '${1-sh}'"
	exit 1
fi

if [ -f $NAME.${1-sh} ]; then
    read -n 1 -p "overwrite? "
    [ "$REPLY" == "y" ] || exit 0
fi

cp $0.${1-sh} .
vim $NAME.${1-sh}
