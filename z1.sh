#!/bin/bash
regexn="^[+-]?[0-9]+$"

if [ $# -ge 5 ]
then
	echo "Podano $# argumentow."
	is_numbers=0
	for i in $@
	do
		if ! [[ $i =~ $regexn ]]
		then
			is_numbers=1
		fi
	done
	if [ $is_numbers == 0 ]
	then
		suma=0
		for i in $@
		do
			suma=$(($suma+$i))
		done
		echo "Suma liczb wynosi $suma."
	else
		echo "Nalezy podac argumenty numeryczne."
	fi
else
	echo "Nalezy podac co najmniej 5 argumentow numerycznych."	
fi
