# Ejercicios Tema 2 
- [Ejercicio 1](#ejercicio-1)
- [Ejercicio 2](#ejercicio-2)
- [Ejercicio 3](#ejercicio-3)
- [Ejercicio 4](#ejercicio-4)

## Ejercicio 1
**Calcular la disponibilidad del sistema si tenemos dos réplicas de cada elemento (en total 3 elementos en cada subsistema).**

-  Disponibilidad 1 y 2

 Component    | Availability 1| Availability 2 
 -----------  | ------------  | ----------- 
 Web          | 85% 	      | 97.75% 
 Application  | 90% 	      | 99% 
 Database     | 99.9% 	      | 99.9999% 
 DNS          | 98% 	      | 99.96% 
 Firewall     | 85%           | 97.75% 
 Switch       | 99%           | 99.99% 
 Data Center  | 99.99%        | 99.99% 
 ISP          | 95%           | 99.75% 

- Disponibilidad 3 

```sh
 As = Acn-1 + ( (1 – Acn-1) * Acn)
```
```sh

disponibilidad_Web3 = 97.75% + ((1-97.75%)* 85%) = 99.6625% 
disponibilidad_Application3 =  99% + ((1-99%)* 90%) = 99.9% 
disponibilidad_Database3 = 99.9999% +((1-99.9999%)* 99.9%) = 99.9999999% 
disponibilidad_DNS3 = 99.96% + ((1-99.96%)* 98%) = 99.9992% 
disponibilidad_Firewall3 =  97.75% + ((1-97.75%)* 85%) = 99.6625% 
disponibilidad_Switch3 =  99.99% + ((1-99.99%)* 99%) = 99.9999% 
disponibilidad_Data Center3 =99.999999% + ((1-99.999999%)*99.99%)= 99.9999999999% 
disponibilidad_ISP  99.75% + ((1-99.75%)*95%) = 99.9875% 
 
AS = 99.6625%*99.9%*99.9999999%*99.9992%*99.6625%*99.9999%*99.9999999999%*99.9875%=99.2135165%
```
## Ejercicio 2
**Buscar frameworks y librerías para diferentes lenguajes que permitan hacer aplicaciones altamente disponibles con relativa facilidad.**
- Como ejemplo, examina [PM2](https://github.com/Unitech/pm2) que sirve para administrar clústeres de NodeJS.

Lenguaje            | Frameworks
----------------    |--------------
[PHP][PHP]          | YII, thinkphp, CakePHP, codeigniter-CI
[JavaScript][JAVA]  | [jQuery], Bootstrap,  [AngularJS], Babel
[Python][PYTHON]    | Django, TurboGears, web2py
[NodeJS][NODE]	    | KOA, LOCOMOTIVE, PARTIA


## Ejercicio 3
**¿Cómo analizar el nivel de carga de cada uno de los subsistemas en el servidor? Buscar herramientas y aprender a usarlas.**

- En **Linux** podemos usar el comando **top** que nos muestra, entre otras cosas, el uso de CPU y de memoria que están haciendo los procesos se están ejecutando en nuestra máquina. De una forma algo más sofisticada htop permite obtener una información similar. De modo que con estos dos programas por ejemplo podemos ver el porcentaje de CPU consumido.

- **Gnome-system-monitor** es otra herramienta que, con un entorno gráfico, nos permite consultar información sobre algunos parámetros de carga de nuestra máquina.

- En **Windows** tenemos la herramienta **Performance Monitor** para obtener esta información con un entorno gráfico, además podemos extraer datos de ella de forma automática.

- Muning 
- Nagios
- Zabbix

*"Información obtenida del material de la asignatura ISE"*
   
## Ejercicio 4
**Buscar diferentes tipos de productos:**

**1. Buscar ejemplos de balanceadores software y hardware (productos comerciales).**

  - Balanceadores software:

    - [Pound](http://www.apsis.ch/pound)
    - [Niginx](http://wiki.nginx.org/NginxEs)
    - [HaProxy](http://www.haproxy.org/)
    - [Zen Load Balancer](http://www.zenloadbalancer.com/)
    - Linux virtual server (LVS)
    - [Ultra Monkey](http://www.ultramonkey.org/)

  - Balanceadores Hardware:
 
    - Cisco tiene una gran gama de balanceadores. 
    - AppDirector OnDemand de la compañía Radware.
    - Load Balancer ADC de Barracuda.
    - Serie BIG-IP de F5.

**2. Buscar productos comerciales para servidores de aplicaciones.** 

  - Servidores de aplicaciones Java EE:

     - WebLogic de Oracle.
     - WebSphere de IBM.
     - JBoss AS de JBoss (RedHat).
     - Geronimo y TomEE de Apache.
     - GlassFish de Oracle

  - Otros servidores de aplicación:

     - Internet Information Server, de Microsoft, para .NET
     - Base4 Server.
     - Zope.

**3. Buscar productos comerciales para servidores de almacenamiento.**
   - [Servidores NAS](http://qloudea.com/servidor-nas)



###Referencias

- https://es.wikipedia.org/wiki/Servidor_de_aplicaciones
- http://www.phpframeworks.com/
- https://wiki.python.org/moin/WebFrameworks/
-http://www.sitepoint.com/top-javascript-frameworks-libraries-tools-use/
- http://angularjs.org
- http://nodeframework.com/
- http://jquery.com
-http://www.tecnozero.com/blog2/servidor-nas-almacenamiento-en-red/

[PHP]:http://www.phpframeworks.com/
[JAVA]:http://www.sitepoint.com/top-javascript-frameworks-libraries-tools-use/
[PYTHON]:https://wiki.python.org/moin/WebFrameworks/
[NODE]:http://nodeframework.com/
[jQuery]: <http://jquery.com>
[AngularJS]: <http://angularjs.org>
