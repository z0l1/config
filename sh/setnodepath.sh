#!/bin/sh

# Check if an argument was provided
if [ $# -eq 0 ]; then
	echo "Error: no arguments provided"
	echo "available node verisons: 18 | 20"
	exit 1
fi

nodev=$1

case $nodev in 
"18")
;;

"20")
;;

*)
	echo "Error: invalid node version value"
	echo "available node verisons: 18 | 20"
	exit 1
;;
esac

echo "setting node path to $nodev"
new_node_path="/c/work/progs/node/$nodev"


old_ifs=$IFS
IFS=":"


filtered_path=""
for s in $PATH
do

	# echo "CHECKING $s"
	# if path DOES NOT contain /progs/node/ add it to the list
	if [[ $s != *"/progs/node/"* ]]; then
		# echo "adding $s"
		if [ -z "$filtered_path" ]; then
		    filtered_path="$s"
		else
		    filtered_path="$filtered_path:$s"
		fi
	fi

	# echo "CURRENT $filtered_path"
done
IFS=$old_ifs

PATH="$filtered_path:$new_node_path"

export PATH
echo "done"

