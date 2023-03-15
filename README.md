# Practica 1 de la materia Sistemas Operativos y Redes - UNGS
1. Realizar un script de hola mundo en bash y ejecutarlo con el comando: 
	bash HolaMundo.sh

2. Modificar el script anterior para generar automáticamente un archivo donde se guarden los siguientes ítems (usar redirección y pipes):
	1. Kernel 
	2. Arquitectura de la PC 
	3. Identificar el CPU 
	4. Identificar las primeras  10 interrupciones 
	5. Identificar la memoria swap 
	6. Identificar la cantidad de memoria principal 
	7. Identificar la placa de video 

	Solucion: $ cat HolaMundo.sh lista.sh > punto2.sh

3. Describir linea por linea qué hacen los siguientes scripts
	1. punto3a.sh
	2. punto3b.sh
	
## Preguntas de intro a C
1. Hacer un programa en C, que imprima en pantalla “hola mundo!”, compilarlo con gcc y ejecutarlo con ./
	### $ nano helloWorld.c
	### $ gcc helloWorld.c -o helloWorld -g
	### $ ./helloWorld
	
2. Hacer un script que compile y ejecute su programa C anterior
	### $ bash helloWorldScript.sh
