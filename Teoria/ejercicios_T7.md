---
date: 2016-06-09
title: "Entrega"
author: Marlene Vásquez
---

## Ejercicios Tema 7

### Ejercicio T7.1: 
#### ¿Qué tamaño de unidad de unidad RAID se obtendrá al configurar un *RAID 0* a partir de dos discos de 100 GB y 100 GB?

- 100GB +100GB = 200GB 

#### ¿Qué tamaño de unidad de unidad RAID se obtendrá al configurar un *RAID 0* a partir de tres discos de 200 GB cada uno?

- 200GB*3 = (200 + 200 + 200)GB = 600GB 

### Ejercicio T7.2: 

#### ¿Qué tamaño de unidad de unidad RAID se obtendrá al configurar un *RAID 1* a partir de dos discos de 100 GB y 100 GB?

- 100 GB (es espejo)

#### ¿Qué tamaño de unidad de unidad RAID se obtendrá al configurar un *RAID 1* a partir de tres discos de 200 GB cada uno?
- 200GB (es espejo)

### Ejercicio T7.3: 

#### ¿Qué tamaño de unidad de unidad RAID se obtendrá al configurar un RAID 5 a partir de tres discos de 120 GB cada uno?

- 120GB 

### Ejercicio T7.4:
#### Buscar información sobre los sistemas de ficheros en red más utilizados en la actualidad y comparar sus características. Hacer una lista de ventajas e inconvenientes de todos ellos, así como grandes sistemas en los que se utilicen.

Algunos sistemas de ficheros de red son SMB (microsoft), NFS (unix), AFP (apple), aunque apple ha empezado a utilizar por defecto SMB2 en OSX 10.9 y en linux también se recomienda SAMBA en lugar de NFS por su mejores características.


#### Configurar en una máquina virtual un servidor NFS. Montar desde otra máquina virtual en la misma subred la carpeta exportada y comprobar que ambas pueden acceder a la misma para lectura y escritura.

- Instalar el servidor nfs

```
sudo apt-get install nfs-kernel-server
```
- Editar el fichero `/etc/exports>`

```
sudo nano /etc/exports
// añadimos al final
/directorio a compartir/ máquina1(opcion1,opcion2,...) máquina2(opcion1,opcion2,...) 
```
![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/t7_nfs.jpg)

- iniciar el servicio

```
service nfs-kernel-server start
```

- Instalar el cliente NFS

```
sudo apt-get install nfs-common
```
- Creamos el directorio en el cual vamos a realizar el montaje.
```
mkdir /COMPARTIR

sudo mount maquinaServidorNFS:/COMPARTIR /COMPARTIR

df -h 
```

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/t7_nfs_1.jpg)

-  Comprobamos los permisos de lectura y escritura

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/t7_nfs_2.jpg)
