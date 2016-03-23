---
layout: post
date: 2016-03-23 11:58
title: "Entrega"
author: Marlene Vásquez
---

# Ejercicios Tema 3

- [Ejercicio 1](#ejercicio-t31)
- [Ejercicio 2](#ejercicio-t32)

### Ejercicio T3.1 

**Buscar con qué órdenes de terminal o herramientas gráficas podemos configurar bajo Windows y bajo Linux el enrutamiento del tráfico de un servidor para pasar el tráfico desde una subred a otra.**

- En **Windows Server 2008 y 2012** [1] se incluye un "Servicio de enrutamiento y acceso remoto" que se puede agregar al servidor mediante un simple asistente.


- En **Linux**, la configuración de red está en /etc/network/interfaces, archivo donde podemos establecer las configuraciones de red. 

   - Para crear una ruta, podemos utilizar el comando `route` y añadirla o borrarla con `add` o `del` respectivamente. 
   - Si lo que queremos es mantener estas rutas tras reiniciar el servidor, añadimos la ruta al archivo /etc/network/interfaces mediante la línea 
	````sh
		route -p add -net network-address -gateway gateway-address 
	```

## Ejercicio T3.2 
**Buscar con qué órdenes de terminal o herramientas gráficas podemos configurar bajo Windows y bajo Linux el filtrado y bloqueo de paquetes.**


- La principal orden en **Linux** es `iptables`, que nos permite incluir múltiples reglas para dejar pasar o bloquear paquetes, siendo una herramienta ampliamente conocida.
   - [Ejemplos de uso](http://www.linux-party.com/index.php/57-seguridad/7980-20-ejemplos-iptables-para-administradores-de-sistemas-linux)

- En **Windows**, se puede agregar un filtrado de paquetes mediante la herramienta de Enrutamiento y acceso remoto.
  - [Firewall](http://es.ccm.net/contents/590-firewall)

## Referencias

- https://docs.oracle.com/cd/E19957-01/820-2981/gecqy/index.html
- https://technet.microsoft.com/es-es/library/cc754692%28v=ws.10%29.aspx

[1]:https://technet.microsoft.com/es-es/library/cc754692%28v=ws.10%29.aspx
