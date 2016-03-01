#Ejercicio T1: 1
**Buscar información sobre el tipo de contenido para el que los siguientes software de servidor web es más adecuado (o más eficiente, o se usa más actualmente...)** 


- [Software de Servidor Web](#)
  - [Apache](#apache)
  - [Nginx](#nginx) 
  - [Thttpd](#thttpd) 
  - [Cherokee](#cherokee) 
  - [Node.js](#nodejs) 
  - [Tomcat](#tomcat) 
- [Referencias](#referencias) 

#Apache 

Apache es **usado** principalmente para enviar páginas web estáticas y dinámicas en la World Wide Web (WWW).

Una de las **ventajas** más grandes de Apache, es que es un servidor web multiplataforma, es decir, puede trabajar con diferentes sistemas operativos y mantener su excelente rendimiento.

Entre las principales **características** de Apache, se encuentran las siguientes:
- Soporte de seguridad SSL y TLS.
- Puede realizar autentificación de datos utilizando SGDB.
- Puede dar soporte a diferentes lenguajes, como Perl, PHP, Python y tcl.
 
#Nginx 

Nginx además de ser un servidor web ligero de alto rendimiento, también es un excelente proxy inverso para contenido web o para protocolos de correo electrónico como por ejemplo IMAP o POP3.

La principal **ventaja** de Nginx como servidor web es que consume muchos menos recursos al servir contenido estático, y esto convierte a Nginx en una excelente opción para funcionar como proxy inverso o como balanceador de carga para otros servidores como Apache, optimizando la entrega de contenidos.

Lo que hace que Nginx sea **diferente** a otros servidores web es su arquitectura, que permite responder a millones de peticiones por segundo aprovechando al máximo los núcleos o hilos de ejecución del servidor con una configuración muy simple.

Algunos aspectos en los que destaca Nginx:
- HTTP y HTTPS
- SMTP, POP3 e IMAP
- El proxy inverso ayuda con el balanceo de carga distribuyendo las peticiones y almacenando en caché parte del contenido.
- Cuenta con caché para solicitudes HTTP
- Facilita el uso de URL con posibilidad de usar expresiones regulares 
- Función de rastreo y seguimiento de los usuarios
- Actúa como web server si fuese necesario
- Soporta TLS/SSL y similares
- Ofrece cierta tolerancia a fallos

#Thttpd 

Es un servidor web de código libre disponible para la mayoría de las variantes de Unix.
Se caracteriza por ser simple, pequeño, portátil, rápido, y seguro, ya que utiliza los requerimientos mínimos de un servidor HTTP. Esto lo hace ideal para servir grandes volúmenes de información estática.

El uso apropiado de esta herramienta es obtener velocidad en la transferencia de archivos y reducción de gastos innecesarios para funciones que no son requeridas en el servidor, debido a tener solo la posibilidad de utilizar servidores estándar (Apache).

Este rasgo importante permite al administrador del servidor limitar la tasa de bit máxima para ciertos tipos de archivos transferidos, generando, una aplicación mucho más ligera y rápida.

#Cherokee 

Es un servidor web multiplataforma. Su objetivo es ser rápido y completamente funcional, sin dejar de ser liviano comparado con otros servidores web. 

Entre sus principales características están:

- Soporta tecnologías como: FastCGI, SCGI, PHP, CGI, SSI, SSL/TLS.5
- Soporta la configuración de servidores virtuales.
- Permite la realización de redirecciones.
- Permite su utilización como balanceador de carga.
- Dispone de un panel de autenticación: 
 - plain
 - htpasswd
 - htdigest
 - PAM

#Node.js 

Está diseñado para construir aplicaciones de red escalables con entradas y salidas (I/O) de datos en una arquitectura orientada a eventos, uno de los puntos fuertes de Node es su capacidad de mantener muchas conexiones abiertas y esperando. 

#Tomcat 

Tomcat es un contenedor web con soporte de servlets. El motor de servlets de Tomcat a menudo se presenta en combinación con el servidor web Apache. 
Tomcat es usado como servidor web autónomo en entornos con alto nivel de tráfico y alta disponibilidad.

#Referencias

- https://es.opensuse.org/Apache
- https://openwebinars.net/nginx-vs-apache/
- http://www.acme.com/
- http://www.ecured.cu/Servidor_HTTP_Cherokee
- https://nodejs.org
- http://www.ajpdsoft.com/
- https://es.wikipedia.org

