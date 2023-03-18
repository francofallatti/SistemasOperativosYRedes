#!bin/bash

function Error(){
	echo "Error: debe ejecutar con un parametro al menos"
}

if test $# -lt 1
then
	Error
else
	cd $HOME
	ls -la > contenido_home.txt
	mkdir $*
	echo "Carpeta" $* "creada"
	mv contenido_home.txt $*
	cd $*
	cat contenido_home.txt

	echo "Persione ENTER para terminar"
	while read -s
	do
		if [ $? == 0 ]
		then
			exit 0
		fi
	done
fi
