##Práctica 2

#### Objetivo
En esta práctica el objetivo es configurar las máquinas virtuales para trabajar en modo espejo, consiguiendo que una máquina secundaria mantenga siempre actualizada la información que hay en la máquina servidora principal.
####Cuestiones a resolver
Hay que llevar a cabo las siguientes tareas:

- Probar el funcionamiento de la copia de archivos por ssh.
- Clonado de una carpeta entre las dos máquinas.
- Configuración de ssh para acceder sin que solicite contraseña.
- Establecer una tarea en cron que se ejecute cada hora para mantener actualizado el contenido del directorio /var/www entre las dos máquinas.

####Resultados

Antes de empezar a resolver las cuestiones propuestas debemos configurar la red interna de las máquinas virtuales  [Configuracion de red virtualbox](https://github.com/marlenelis/SWAP1516/blob/master/Practicas/red_interna.md) 

- Copia de archivos por ssh

```sh
$ tar czf - /var/www/ | ssh 192.168.1.102 'cat > ~/tar.tgz'
```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_2.jpg)

- Clonado de una carpeta


```sh
$ rsync -avz -e ssh 192.168.1.101:/var/www/ /var/www/
```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_1.jpg)


- Configuración de ssh

> Generación de clave dsa en ssh

```sh
$ ssh-keygen -t dsa
```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_3.jpg)


> Copiar la clave pública a la máquina principal.

```sh
$ ssh-copy-id -i .ssh/id_dsa.pub 192.168.1.101
```
 ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_4.jpg)

> Comprobar si se ha realizado la copia en la máquina principal.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_5.jpg)

> Se comprueba que se puede conectar a la máquina principal sin contraseña.

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_6.jpg)

- Establecer una tarea en cron para mantener actualizado el directorio /var/www/.

  - Se edita el fichero /etc/crontab y se añade la siguiente línea al final.


```sh
  10 * * * *  root rsync -avz -e ssh 192.168.1.101:/var/www/ /var/www/
```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_7.jpg)

  - Por último para comprobar la ejecución de la tarea, procedo a descargar una imagen y guardarla en el directorio /var/www/ de la máquina principal para modificar el estado y comprobar si se produce la actualización en la máquina secundaria.


![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_8.jpg)

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_9.jpg)

