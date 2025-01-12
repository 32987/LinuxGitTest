#!/bin/bash

if [ -e "./baza.txt" ]
then
	echo "Plik baza.txt istnieje."
else
	echo "Plik baza.txt nie istnieje. Tworzenie..."
	touch baza.txt
	echo "Imie Nazwisko Plec Wiek" > baza.txt
fi

nameregex="^[A-Za-z]+$"
ageregex="^[+]?[0-9]+$"
sexregex="^[KM]$"

if [ $# == 4 ]
then
	if [[ $1 =~ $nameregex ]] && [[ $2 =~ $nameregex ]] && [[ $3 =~ $sexregex ]] && [[ $4 =~ $ageregex ]]
	then
		echo "$1 $2 $3 $4" >> baza.txt
		echo "Uzytkownik zostal dodany do bazy."
	else
		echo "Nalezy podac poprawne imie, nazwisko, plec (K lub M) i wiek."
	fi
else
	echo "Nalezy podac 4 argumenty: imie, nazwisko, plec (K lub M) i wiek."
fi

