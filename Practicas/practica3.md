# Prráctica 3

## Objetivo

En esta práctica el objetivo es configurar las máquinas virtuales de forma que dos
hagan de servidores web finales mientras que la tercera haga de balanceador de
carga por software.

## Tareas a realizar

1. Configurar una nueva máquina virtual sin Apache.
2. Configurar una máquina e instalarle el nginx como balanceador de carga.
3. Configurar una máquina e instalarle el haproxy como balanceador de carga.

## Resultados
#### 1. Configurar una nueva máquina virtual sin Apache

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p3_1.jpg)

#### 2. Configurar una máquina e instalarle el nginx como balanceador de carga
#### Instalación de Niginx
- importar la clave del repositorio software
```sh
$ cd /tmp/
$ wget http://nginx.org/keys/nginx_signing.key
$ apt-key add /tmp/nginx_signing.key
$ rm -f /tmp/nginx_signing.key
```
![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p3_2.jpg)

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p3_3.jpg)

- Añadir el repositorio al fichero /etc/apt/source.list

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/p3_4.jpg)

- Instalar el paquete Nginx.

```sh
$ apt-get update
$ apt-get install nginx
```


#### 3. Configurar una máquina e instalarle el haproxy como balanceador de carga.



