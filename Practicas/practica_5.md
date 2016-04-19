

# Práctica Nº 5. 

#Replicación de bases de datos MySQL


## Objetivo

- El objetivo es configurar las máquinas virtuales para trabajar de forma que se mantenga actualizada la información en una BD entre dos servidores (la máquina secundaria mantendrá siempre actualizada la información que hay en la máquina servidora principal).


## Tareas a realizar

- Hay que llevar a cabo las siguientes tareas obligatorias:
	- Crear una BD con al menos una tabla y algunos datos.
	- Realizar la copia de seguridad de la BD completa usando mysqldump.
	- Restaurar dicha copia en la segunda máquina (clonado manual de la BD).
	- Realizar la configuración maestro-esclavo de los servidores MySQL para que la replicación de datos se realice automáticamente.

Adicionalmente, y como [tarea opcional](#tarea-opcional) se propone realizar la configuración maestro-maestro entre las dos máquinas de bases de datos.

### Resultados

##### Crear la base de datos

Para crear la base de datos e insertar datos, accedo a la interfaz de línea de comandos MYSQL.

```
mysql -uroot -p 
```

- crear la base de datos `contactos`.

	```
	create database contactos;
	```

- seleccionar la base de datos creada anteriormente.

	```
	use contactos;
	```

- añadir la tabla `datos` a la base de datos contactos.

	```
	create table datos(nombre varchar(100), tlf int);
	```

- insertar datos en la tabla creada anteriormente.

	```
	insert into datos(nombre , tlf) values ("Juan",958378036);
	```
- hacer una consulta.

	```sh
	select * from datos;
	```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd.jpg)


##### Realizar la copia de seguridad de la BD completa usando mysqldump.

- bloquear las tablas para evitar que se acceda a la base de datos mientras se realiza la copia de seguridad.

	```
	mysql -u root –p
	
	mysql> FLUSH TABLES WITH READ LOCK;
	mysql> quit
	```
- guardar los datos con `mysqldump`.

	```
	mysqldump contactos -u root –p > /root/contactos.sql
	```
- desbloquear las tablas.

	```
	mysql -u root –p
	
	mysql> UNLOCK TABLES;
	mysql> quit
	```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_1.jpg)

El archivo generado no contiene la creación de la base de datos por lo que en la máquina secundaria será necesario crearla manualmente.

````
mysql -u root –p
mysql> CREATE DATABASE ‘contactos’;
mysql> quit
````

##### Restaurar dicha copia en la segunda máquina (clonado manual de la BD).


- copiar el archivo contactos.sql de la máquina principal a la máquina secundaria.

	````
	scp root@maquina1:/root/contactos.sql /root/
	````
- restaurar los datos.

	````
	mysql -u root -p contactos < /root/contactos.sql
	````

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_2.jpg)

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_4.jpg)

#####Realizar la configuración maestro-esclavo de los servidores MySQL para que la replicación de datos se realice automáticamente.


- consultar la version de mysql.

	````
	mysql --version
	````

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_6.jpg)

- editar el fichero de configuración en las dos máquinas servidoras.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_7.jpg)

- crear el usuario esclavo en la máquina MASTER (servidor 1).

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_8.jpg)

- añadir los datos del MASTER en la máquina SLAVE

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_11.jpg)

- iniciar el esclavo en la máquina SLAVE (servidor 2).

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_9.jpg)

- comprobación de que no hay errores.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_12.jpg)

- comprobación de que se realiza la replica correctamente.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_13.jpg)


###Tarea opcional 

**Configuración maestro-maestro**

Para realizar esta configuración, he realizado los pasos de la configuración maestro-esclavo pero en sentido inverso.

	- El servidor 1 lo configuro como esclavo
	- El servidor 2 lo configuro como maestro

- editar el fichero de configuración `/etc/mysql/my.cnf`


![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_14.jpg)


- crear el esclavo en el MASTER (servidor 2)

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_15.jpg)

- añadir los datos del MASTER en la máquina SLAVE

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_16.jpg)

- iniciar el esclavo en la máquina SLAVE (servidor 1).

	`mysql> START SLAVE;`

- comprobación de que no hay errores.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_17.jpg)

- comprobación de que se realiza la replica correctamente.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p5_bd_18.jpg)





