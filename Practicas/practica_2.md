### Práctica 2

#### Objetivo
En esta práctica el objetivo es configurar las máquinas virtuales para trabajar en modo espejo, consiguiendo que una máquina secundaria mantenga siempre actualizada la información que hay en la máquina servidora principal.
#### Cuestiones a resolver
Hay que llevar a cabo las siguientes tareas:

- Probar el funcionamiento de la copia de archivos por ssh
- Clonado de una carpeta entre las dos máquinas
- Configuración de ssh para acceder sin que solicite contraseña
- Establecer una tarea en cron que se ejecute cada hora para mantener actualizado el contenido del directorio /var/www entre las dos máquinas

#### Resultados

- Copia de archivos por ssh

```sh
$ tar czf - /var/www/ | ssh 192.168.1.102 'cat > ~/tar.tgz'
```


> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_2.jpg)

- Clonado de una carpeta


```sh
$ rsync -avz -e ssh 192.168.1.101:/var/www/ /var/www/
```

> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_1.jpg)


- Configuración de ssh

> Generación de clave dsa en ssh

```sh
$ ssh-keygen -t dsa
```

> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_3.jpg)


> Copiar la clave publica a la máquina principal.

```sh
$ ssh-copy-id -i .ssh/id_dsa.pub 192.168.1.101
```
> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_4.jpg)

> Comprobar si se ha realizado la copia en la máquina principal.
> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_5.jpg)

> Ahora ya podemos conectarnos a la máquina principal sin contraseña.

> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_6.jpg)

- Establecer una tarea en cron (mantener actualizado el directorio /var/www/).

  - editamos el fichero /etc/crontab y añadimos la siguiente línea al final.

```sh
  0 * * * * rsync -avz -e ssh <IP maquina>:/var/www/ /var/www/
```

> ![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p2_7.jpg)



