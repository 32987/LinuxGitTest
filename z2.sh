#!/bin/bash
shopt -s globstar
if [ -e "../Documents/copied" ]
then
	echo "Katalog docelowy istnieje."
else
	echo "Katalog docelowy nie istnieje. Tworzenie..."
	mkdir ~/Documents/copied
fi


if [ $# == 0 ]
then
	echo "Nalezy podac argumenty."
elif [ $# == 1 ]
then
	echo "Podano 1 argument."
	cp **/*.$1 ../Documents/copied
	echo "Pliki zostaly skopiowane pomyslnie."
else
	echo "Podano wiecej niz 1 argument."
	for i in $@
	do
		cp $i ../Documents/copied
	done
	echo "Pliki zostaly pomyslnie skopiowane."
fi
