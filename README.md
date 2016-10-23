# MiniERP WEB

[Demo Online](http://tomcat8-yga.rhcloud.com/minierp/)

![Panel principal de administrador](screenshot_admin.png)
![Panel principal de Vendedor](screenshot_vendedor.png)

## Requerimientos

- JDK8
- MySQL 5.1.x
- Tomcat 8.0.x

## Instalación

- Ejecutar los archivos SQL que están dentro de la carpeta scripts en una base de datos 'episerp'
- Crear el usuario alumno
``` sql
CREATE USER 'alumno'@'%' IDENTIFIED BY '1234';
GRANT USAGE ON *.* TO 'alumno'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `episerp`.* TO 'alumno'@'%';
```
- Modificar hibernate.cfg.xml o db.properties para la conexion a la base de datos (ubicados en src/main/resources)
- Instalar las dependencias del archivo pom.xml con Maven.
- Lanzarlo con un servidor Tomcat
- Usuario: admin, Contraseña: admin
