# Práctica Nº 5. Discos en RAID.

### Objetivo

- El objetivo es configurar las máquinas virtuales para trabajar de forma que se mantenga actualizada la información en una BD entre dos servidores (la máquina secundaria mantendrá siempre actualizada la información que hay en la máquina servidora principal).


## Tareas a realizar

- Hay que llevar a cabo las siguientes tareas:
	- Realizar la configuración de dos discos en RAID 1 bajo Ubuntu 12.04,
automatizando el montaje del dispositivo creado al inicio del sistema.
	- Simular un fallo en uno de los discos del RAID (mediante comandos con el
mdadm), retirarlo “en caliente”, comprobar que se puede acceder a la información que hay almacenada en el RAID, y por último, añadirlo al conjunto y comprobar que se reconstruye correctamente.

Adicionalmente, y como [tarea opcional]() se propone realizar una configuración de servidor NFS. La idea es que la máquina con el dispositivo RAID sea un servidor NFS y otra máquina monte dicha unidad usando este protocolo.

### Resultados
 

