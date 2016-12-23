#!/bin/bash

massage="hello world"
echo "$massage\n"
# variablen abtrennen
echo "${massage}!\n"

# call other commands
ls .. | grep Bash

# ~~~~~~~~~~~~~~~~~~~~Date~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

date # deutsch
LC_ALL=C date # englisch


# ~~~~~~~~~~~~~~~~~~~~Ausgaben~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

befehl=ls  # unsicher
pfad="/home/rodito/*"

# liste=$($befehl $pfad);
# echo "    Gefundene Elemente:"
# echo "$liste"

# besser:

for file in $pfad; do
    echo "die Datei: $file"
    fname=$(basename "$file")
    echo "hat den Namen: $fname"
    fdir=$(dirname "$file")
    echo "im Verzeichnis: $fdir"
done

echo -e "\n~~~~~~~~~~~~~~~~~~ Abschneiden von Mustern ~~~~~~~~~\n\n"

pfad="/var/www/index.html"
echo "Ursprung: $pfad"
echo "${pfad%/*}"
echo "${pfad%%/*}"
echo "${pfad#*/}"
echo "${pfad##*/}"



echo -e "\n~~~~~~~~~~~~~~~~~~ Rechnen  ~~~~~~~~~\n\n"

add1=100
add2=3
echo "$add1 / $add2 = $(($add1/$add2))"
add3=4
echo "$add1 + $add2 * $add3 = $(($add1 + $add2 * $add3))"


echo -e "\n~~~~~~~~~~~~~~~~~~Arrays~~~~~~~~~\n\n"

myArray=(Das sind vier Elemente)
myArray+=(und dahinter noch sechs weitere Elemente)

# print whole Array
echo "${myArray[*]}"
echo "number of elements in Arrray: ${#myArray[*]}"


echo -e "\n~~~~~~~~~~~~~~~~~~ Interaktion mit User ~~~~~~~~~\n\n"


# Begrüßung
read -p "Enter your name: " name
echo "Hello $name"

read -p "start Programm A (a) or Programm B (b)?" kommando
if [ $kommando == 'a' ];
then 
    echo "starte Programm A ... done";
elif [ $kommando == 'b' ]
then 
    echo "starte Programm B ... done";
else 
    echo "Abbruch";
fi


echo -e "\n~~~~~~~~~~~~~~~~~~ case and loops ~~~~~~~~~\n\n"

case "$name" in
    Sascha) 	echo "Hello Admin"
	    	echo "You have all rights"
	;;	
    Klaus)  	echo "Hello second Admin"
		echo "You have some rights"
	;;
    *)		echo "I dont no you $name"
		echo "you have no rights"
esac

# loops
myArray=("Das" "ist" "das" "Haus vom" "Nikolaus")
i=0;
for var in ${myArray[*]}
do
    echo "array[$i] = $var"
    ((i++))
done

echo

# bildbearbeitung
cdir=$(pwd)
inputdir="${cdir}/buntbild"
outputdir="${cdir}/graubild"

# echo "debug: input = $inputdir | out: $outputdir"

for pic in "$inputdir"/*png ;
do
    picname=$(basename "$pic")
    echo "Bearbeite Bild: $picname"
    convert "$pic" -colorspace Gray "${outputdir}/${picname}"
done


echo -e "\n~~~~~~~~~~~~~~~~~~ Funktionen  ~~~~~~~~~\n\n"

#example function
howManyFiles() {
    local path="$1"
    local anzahl=0
    for file in "$path"/* ; do
	(( anzahl++ ))
    done
    echo "Es befinden sich $anzahl Dateien im Verzeichnis $path"
}

# Aufruf der Funktion
path="$(pwd)/buntbild"
howManyFiles $(pwd)
howManyFiles $path



