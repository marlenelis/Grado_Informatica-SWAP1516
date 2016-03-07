# Ejercicio T2:1 

**Calcular la disponibilidad del sistema si tenemos dos réplicas de cada elemento (en total 3 elementos en cada subsistema).**

```sh
 As = Acn-1 + ( (1 – Acn-1) * Acn)
```
##### Disponibilidad 1
 Component    | Availability 
 -----------  | ----------- 
 Web          | 85% 
 Application  | 90% 
 Database     | 99.9% 
 DNS          | 98% 
 Firewall     | 85% 
 Switch       | 99% 
 Data Center  | 99.99% 
 ISP          | 95%
 
##### Disponibilidad 2

 Component    | Availability 
 -----------  | ----------- 
 Web          | 97.75% 
 Application  | 99% 
 Database     | 99.9999% 
 DNS          | 99.96% 
 Firewall     | 97.75% 
 Switch       | 99.99% 
 Data Center  | 99.99% 
 ISP          | 99.75% 
 ##### Disponibilidad 3
 
 ```sh
 As = Acn-1 + ( (1 – Acn-1) * Acn)
 disponibilidad_Web3 = 97.75% + ((1-97.75%)* 85%) = 99.6625%
 disponibilidad_Application3 =  99% + ((1-99%)* 90%) = 99.9 %
 disponibilidad_Database3 = 99.9999% +((1-99.9999%)* 99.9%) = 99.9999999%
 disponibilidad_DNS3 = 99.96% + ((1-99.96%)* 98%) = 99.9992%
 disponibilidad_Firewall3 =  97.75% + ((1-97.75%)* 85%) = 99.6625%
 disponibilidad_Switch3 =  99.99% + ((1-99.99%)* 99%) = 99.9999%
 disponibilidad_Data Center3 =99.999999% + ((1-99.999999%)*99.99%)=99.9999999999%
 disponibilidad_ISP  99.75% + ((1-99.75%)*95%) = 99.9875%
 
 AS = 99.6625%*99.9%*99.9999999%*99.9992%*99.6625%*99.9999%*99.9999999999%*99.9875%=99.2135165%
```
 
