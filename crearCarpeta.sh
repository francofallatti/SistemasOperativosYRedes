#!/bin/bash
#crear una estructura de carpetas pasadas por parametro

function Error(){
	echo "Error. No se paso ningun parametro"
}
# -lt , -lg , -eq
## $# -> da la cantidad de parametros que le paso al script, si es menor a 1 da Error
if test $# -lt 1  
then 
		Error
fi

## $* -> pido todos los parametros que ingresó el usuario y los recorro
for folder in $*
do 
		echo $folder
		pwd
		echo "FOLDER: " >>ls.log
		pwd >> ls.log
		ls -l | sort -k9>> ls.log
		if [ -d $folder ];
		then
				echo "La carpeta ya existe."
				mv ls.log $folder
				cd $folder
		else 
				echo "La carpeta no existe, se crea"
				mkdir $folder
				mv ls.log $folder
				cd $folder
		fi
done