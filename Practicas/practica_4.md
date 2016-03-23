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
`````sh
| `Servidor solo`	|1	|2	|3	|4	|5	|6	|7	|8	|9	|10	|media  |desviación	|
| :---------------------- |------:|-----:|------: |-----: |-----: |-----: |-----: |-----: |-----: |-----: |-----: |-----: 	|
| **time taken for test**|0,813  |0,827	|1,073	|1,083	|0,856	|0,932	|0,854	|0,861	|0,855	|0,862	|0,902	|0,07664	|
| **Faile request**	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0		|
| **Request per second**	|1230,420|1209,730|931,590|923,060|1167,980|1073,130|1170,760|1162,030|1169,370|1159,510|1119,758|86,2988|
````
													
| `Nginx`		|1	|2	|3	|4	|5	|6	|7	|8	|9	|10	|media  |desviación	|
| :---------------------- |------:|-----:|------: |-----: |-----: |-----: |-----: |-----: |-----: |-----: |-----: |-----: 	|
| **time taken for test**|1,243	|1,212	|1,235	|1,224	|1,264	|1,199	|1,264	|1,267	|1,272	|1,241	|1,242	|0,0199		|
| **Faile request**	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0		|
| **Request per second**|804,670|825,330|809,450|817,300|790,910|833,780|791,400|789,080|768,020|805,830|803,577|14,9796	|
													

| `HaProxy`		|1	|2	|3	|4	|5	|6	|7	|8	|9	|10	|media  |desviación	|
| :---------------------|------:|-----:|------: |-----: |-----: |-----: |-----: |-----: |-----: |-----: |-----: |-----: 	|
| **time taken for test**|1,124	|1,168	|1,135	|1,117	|1,104	|1,144	|1,128	|1,238	|1,226	|1,129	|1,151	|0,03562	|
| **Faile request**	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0,000	|0		|
| **Request per second**	|889,550|856,030|880,670|895,010|905,750|874,250|886,280|807,520|815,710|885,640|869,641|25,9326	|

#### seige




[tabla]:https://docs.google.com/spreadsheets/d/1TM30ZFnYA6Yj4I-MeIlKWQIbzIzJky37a6YdDkl9Y_w/edit?usp=sharing
