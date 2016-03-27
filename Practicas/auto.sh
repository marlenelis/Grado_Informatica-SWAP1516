#!/bin/bash
#autor:	Marlene Vásquez
#uso : 	./auto <1: servidor 3:nginx 4:haproxy>
LIMIT=10
#fichero de salida
FICH=salida_OPENWEBLOAD.txt
echo " ">> $FICH
for((a=0; a<LIMIT; a++))
do
echo "=================$a===================="  >>$FICH
#ab -n 1000 -c 5 http://192.168.1.10$1/prueba.html >> $FICH
#siege -b -t60S -v http://192.168.1.10$1/prueba.html > $FICH
openload -l 30 http://192.168.1.10$1/prueba.html 5 >>$FICH
done
