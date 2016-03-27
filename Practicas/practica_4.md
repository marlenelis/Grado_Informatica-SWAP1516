# Práctica 4

## Objetivo
Comprobar el rendimiento de servidores web.

## Tareas a realizar
En esta práctica se deben usar las dos herramientas para medir, primero el rendimiento de una sola máquina servidora (haciendo peticiones a la IP de la máquina 1, p.ej.), y a continuación el rendimiento de la granja web cuando usamos balanceo de carga tanto con nginx como con haproxy (haciendo las peticiones a la dirección IP del balanceador).

*Todas las ejecuciones se harán desde una máquina independiente a las que forman la granja web, ya sea un terminal de la máquina anfitriona u otra máquina virtual nueva.* 

Puesto que en la práctica anterior usamos dos programas diferentes para hacer el balanceo, en esta práctica comprobaremos el rendimiento de la granja web cuando el balanceador es nginx y también cuando es haproxy, por lo que tendremos tres baterías de pruebas correspondientes a las tres configuraciones a evaluar: 

  - servidor solo
  - granja web con nginx
  - granja web con haproxy.

Se harán un *mínimo* de 10 mediciones para obtener media y desviación estándar con cada métrica recogida y se mostrarán los resultados en forma de tabla y gráficas para comparar los resultados obtenidos con las tres configuraciones.

## Configuración 

Para  comprobar el rendimiento de la granja web  se usa las siguientes herramientas.

- Apache Benchmark
- Siege
- OpenWebLoad

Procedo a la instalación de Apache Benchmark.

````sh
$ sudo apt-get install apache2-utils
````

a continuación procedo con la instalación de Siege y generación del archivo de configuración

````sh
$ sudo apt-get install siege
````

````sh
siege.conf
````

Como herramienta opcional he elegido [OpenWebLoad](http://openwebload.sourceforge.net/)
descargamos el fichero y procedemos a la instalación como nos indica en su página oficial.
`nota: durante la instalación me surgió un error, el cual se soluciona borrando lo que se muestra en la imagen.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_W_d.jpg)

##Resultados

[Datos][tabla]

[script](https://github.com/marlenelis/SWAP1516/blob/master/Practicas/auto.sh)

###ab
________________________________

````sh
$ ab -n 1000 -c 5 http://ip-máquina/prueba.html
````

- Muestras

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_9_1.jpg)

- Media

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_8_1.jpg)

- Gráficos

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_ab_g.jpg)

###Siege
______________________________

````sh
$ siege -b -t60S -v http://ip-máquina/prueba.html
````
![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_3.jpg)

- Muestras

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_s.jpg)

- Media

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_7_1.jpg)

- Gráficos

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_s_g.jpg) 

###OpenWebLoad
_____________________________________________

````sh
openload -l 30 http://ip-máquina/prueba.html 5 
````

se realiza durante un período de tiempo de 30 seg. y simula 5 clientes simultáneos.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_OWL_1_g.jpg) 

- Muestras

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4__OWL_2.jpg) 

- Media

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4__OWL_3.jpg) 

- Gráficos

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_OWL.jpg) 

[tabla]:https://docs.google.com/spreadsheets/d/1TM30ZFnYA6Yj4I-MeIlKWQIbzIzJky37a6YdDkl9Y_w/edit?usp=sharing




