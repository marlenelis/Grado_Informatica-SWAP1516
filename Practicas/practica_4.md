# Práctica 4

## Objetivo
Comprobar el rendimiento de servidores web.

## Tareas a realizar
En esta práctica se deben usar las dos herramientas para medir, primero el rendimiento de una sola máquina servidora (haciendo peticiones a la IP de la máquina 1, p.ej.), y a continuación el rendimiento de la granja web cuando usamos balanceo de carga tanto con nginx como con haproxy (haciendo las peticiones a la dirección IP del balanceador).

*Todas las ejecuciones se harán desde una máquina independiente a las que forman la granja web, ya sea un terminal de la máquina anfitriona u otra máquina virtual nueva.* 

Puesto que en la práctica anterior usamos dos programas diferentes para hacer el balanceo, en esta práctica comprobaremos el rendimiento de la granja web cuando el balanceador es nginx y también cuando es haproxy, por lo que tendremos tres baterías de pruebas correspondientes a las tres configuraciones a evaluar: (1) servidor solo, (2) granja web con nginx, (3) granja web con haproxy.

Se harán un *mínimo* de 10 mediciones para obtener media y desviación estándar con cada métrica recogida y se mostrarán los resultados en forma de tabla y gráficas para comparar los resultados obtenidos con las tres configuraciones.

Para conseguir una mayor nota en esta práctica se propone buscar alguna otra herramienta para medir las prestaciones y utilizarla tanto con la máquina individual como con la granja web. Podemos usar cualquier herramienta de las comentadas al principio, o bien otra que encontremos o conozcamos.
## Configuración 

La máquina independiente tiene la siguiente configuración.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_1.jpg)

Para  comprobar el rendimiento de la granja web  se usara las siguientes herramientas.
- Apache Benchmark
- Siege


Procedo a la instalación de Apache Benchmark.

````sh
$ sudo apt-get install apache2-utils
````

a continuación procedo con la instalación de Seige

````sh
$ sudo apt-get install siege
````
generación del archivo de configuración

````sh
siege.conf
````

##Resultados

[Datos][tabla]

#### ab


- Muestras

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_9.jpg)

- Media

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_8.jpg)

#### seige

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_2.jpg)

- Muestras

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_4.jpg)
![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_5.jpg)
![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_6.jpg)

- Media

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p4_7.jpg)


[tabla]:https://docs.google.com/spreadsheets/d/1TM30ZFnYA6Yj4I-MeIlKWQIbzIzJky37a6YdDkl9Y_w/edit?usp=sharing
