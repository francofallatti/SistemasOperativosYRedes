#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <pthread.h>
#include <stdint.h>

void* calculo_algoritmo(void* parametro){
	long contador= (long) parametro;
	while(contador<2147483647){
		contador++;
	}
}

int main(){
	pthread_t t1;
	pthread_t t2;
	pthread_t t3;
	pthread_t t4;
	pthread_t t5;
	long parametro;
	pthread_create(&t1,NULL,calculo_algoritmo, (void *)parametro);
	pthread_create(&t2,NULL,calculo_algoritmo, (void *)parametro);
	pthread_create(&t3,NULL,calculo_algoritmo, (void *)parametro);
	pthread_create(&t4,NULL,calculo_algoritmo, (void *)parametro);
	pthread_create(&t5,NULL,calculo_algoritmo, (void *)parametro);
	pthread_join(t1,NULL);
	pthread_join(t2,NULL);
	pthread_join(t3,NULL);
	pthread_join(t4,NULL);
	pthread_join(t5,NULL);
	return 0;
}
