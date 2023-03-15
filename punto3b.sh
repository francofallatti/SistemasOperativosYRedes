#!bin/bash
echo "nombre del archivo:";
read archivo;
echo "buscar:";
read patron;
cat $archivo | grep -n $patron >>out.txt
