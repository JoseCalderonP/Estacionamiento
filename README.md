# Estacionamiento
Instrucciones  para ejecutar el sistema.
Al descargar el repositorio y descomprimirlo se mostraran los siguientes archivos.
![image](https://user-images.githubusercontent.com/31561913/185724739-c5d83b81-0b8d-4e95-9458-da25ea432544.png)

# Base de datos
Se utilizo microsoft sql server management studio (SSMS) para la creacion y gestion de la base de datos.
Dentro del SSMS abrir el script DB_Estacionamiento y ejecutar el mismo script
![image](https://user-images.githubusercontent.com/31561913/185724933-eb774444-218b-41e4-8523-d4de46ded765.png)

Al terminar la ejecucion ya estara la BD con las tablas e informacion pre-cargada

![image](https://user-images.githubusercontent.com/31561913/185724961-a8eedb92-a959-4d13-b86f-37b16771434b.png)

# Visual Studio
Dentro de Visual Studio, hay que abrir la solucion del proyecto que se encuentra en la carpeta, con el nombre WebApplication4.sln
![image](https://user-images.githubusercontent.com/31561913/185725005-a2870429-92b9-45b0-b646-50846268a120.png)
![image](https://user-images.githubusercontent.com/31561913/185725055-98d2205b-0e3a-4db8-9c61-d8fd6e8a458b.png)

Antes de ejecutar el sistema es necesario modificar el archivo **Web.config** donde se encuentra la conexion al servidor y la base de datos.
Remplazando los datos marcados por el nombre del servidor, nombre de la base de datos, usuario y contraseña para realizar la conexion.
![image](https://user-images.githubusercontent.com/31561913/185725178-8098149d-24eb-4db0-84e3-6d3040c5c505.png)
![image](https://user-images.githubusercontent.com/31561913/185725334-1fdfe35b-9a60-476b-a323-3e40c36308bd.png)

Una vez realizado ese cambio sobre la solucion **WebApplication4** hay que dar click derecho > **Ver** > **Ver en Explorador** o Dar click sobre el boton de **ISS Express**

![image](https://user-images.githubusercontent.com/31561913/185725441-1a678a9c-03b8-48c3-b09f-c87ef02eb55a.png) 

![image](https://user-images.githubusercontent.com/31561913/185725519-32564b48-00b2-4125-b3d5-e3cf6207106b.png)


# Caputras De Muestra

Agregar Vehiculo Nuevo

https://user-images.githubusercontent.com/31561913/197843089-0eb3eb92-62ef-4052-ae15-d12103c0ab58.mp4

Registra salida que muestra un resumen del total a pagar (si es necesario)

https://user-images.githubusercontent.com/31561913/197843548-6728b5b6-f243-454a-8358-fd0bbc53c604.mp4

Agrega Nuevo tipo de vehiculo o tarica si es que incluye tarica o no

![NewTipo1](https://user-images.githubusercontent.com/31561913/197847041-bcfe914e-e4b4-4e2b-aa29-7107497d9861.PNG)
![NewTipo2](https://user-images.githubusercontent.com/31561913/197847045-441a30ea-57c8-4e95-a15d-ed4c718f7e2f.PNG)

Reporte de salidas, donde ser puede filtrar las salidas de vehiculos por fecha y hora exacta

![reporte](https://user-images.githubusercontent.com/31561913/197847289-84037d8e-7a88-442b-b1e7-fea8b341c1b5.PNG)


