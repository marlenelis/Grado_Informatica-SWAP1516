---
date: 2016-03-23 11:58
title: "Entrega"
author: Marlene Vásquez
---
##Ejercicios Tema 4

####Ejercicio T4.1:
Buscar información sobre cuánto costaría en la actualidad un mainframe. Comparar precio y potencia entre esa máquina y una granja web de unas prestaciones similares.

Me ha resultado complicado realizar comparaciones de especificiones y precios ya que los fabricantes no los exponen de forma pública.

####Ejercicio T4.2:
Buscar información sobre precio y características de balanceadores hardware específicos. Compara las prestaciones que ofrecen unos y otros.



####Ejercicio T4.3:
Buscar información sobre los métodos de balanceo que implementan los dispositivos recogidos en el ejercicio 4.2



####Ejercicio T4.4:
Instala y configura en una máquina virtual el balanceador ZenLoadBalancer.
[solución](https://github.com/marlenelis/SWAP1516/blob/master/Practicas/zenLoadBalancer.md)


####Ejercicio T4.5:

Probar las diferentes maneras de redirección HTTP.
¿Cuál es adecuada y cuál no lo es para hacer balanceo de carga global? ¿Por qué?

**Redirección 301**. Se puede definir este tipo de redireccion como “PERMANENTE”. Esto indica que todo contenido de una URL antigua se mueva de forma permanente a la URL nueva. 

**Redirección 302**. Se puede definir este tipo de redirección como “TEMPORAL”. Esto indica que todo el contenido de una URL antigua se mueva de forma temporal a la URL nueva.

La adecuada  es la 302, porque sería posible redirigir el tráfico a diferentes direcciones temporales y no una permanente la cual también la actualizan navegadores.

####Ejercicio T4.6:

Buscar información sobre los bloques de IP para los distintos países o continentes.
Implementar en JavaScript o PHP la detección de la zona desde donde se conecta un usuario

Las direcciones IP no se asignan de forma arbitraria, están ordenadas en bloques y se lleva un registro de cuál de ellos corresponde a cada país.
Todo ese registro se almacena en bases de datos enormes que son actualizadas regularmente.

A continuación el script que permite conjuntadamente con una base de datos que se puede [descargar gratis](http://chir.ag/projects/geoiploc/), determinar y mostrar dos datos: la dirección IP y el país que esta representa.


````php
<?php

  include("geoiploc.php"); // Must include this

  // ip must be of the form "192.168.1.100"
  // you may load this from a database
  $ip = $_SERVER["REMOTE_ADDR"];
  echo "Your IP Address is: " . $ip . "<br />";

  echo "Your Country is: ";
  // returns country code by default
  echo getCountryFromIP($ip);
  echo "<br />\n";

  // optionally, you can specify the return type
  // type can be "code" (default), "abbr", "name"

  echo "Your Country Code is: ";
  echo getCountryFromIP($ip, "code");
  echo "<br />\n";

  // print country abbreviation - case insensitive
  echo "Your Country Abbreviation is: ";
  echo getCountryFromIP($ip, "AbBr");
  echo "<br />\n";

  // full name of country - spaces are trimmed
  echo "Your Country Name is: ";
  echo getCountryFromIP($ip, " NamE ");
  echo "<br />\n";
?>

````


####Ejercicio T4.7:
Buscar información sobre métodos y herramientas para implementar GSLB.

##Referencias

http://kemptechnologies.com/es/load-balancer-kemp-f5-netscaler-comparison/

http://www.trimedia.es/blogs/posicionamiento-web/redireccion-301

http://luismvillanueva.com/seo/redireccion-301-manual.html 

https://norfipc.com/redes/saber-direccion-ip.php

http://chir.ag/projects/geoiploc/


