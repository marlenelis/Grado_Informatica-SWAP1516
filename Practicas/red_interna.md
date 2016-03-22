## Configuración: Red Interna VirtualBox

1. Añadir un adaptador de red a la máquina virtual

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/config-red-interna.jpg)

2. Editar el fichero de configuración

````sh
$ sudo vim /etc/network/interfaces
````
**Añadir**
````sh
auto eth1
iface eth1 inet static
address 192.168.1.103 # cambiar
netmask 255.255.255.0
network 192.168.1.0
gateway 10.0.2.255    # cambiar - (común para todos los servidores de nuestra red)
broadcast 192.168.1.255
````

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/config-red-interna1.jpg)
3. Reiniciar el sistema para que se actualize la configuración.


4. Comprobar los cambios

````sh
$ ifconfig
````

![imagen](https://github.com/marlenelis/SWAP1516/blob/master/images/config-red-interna2.jpg)



