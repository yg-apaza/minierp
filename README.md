# MiniERP WEB
Curso: Tecnologías de la Información

## Requerimientos

- JDK8
- MySQL 5.1.x
- Tomcat 8.0.x

## Instalación

- Ejecutar schema.sql en la base de datos
- Modificar hibernate.cfg.xml o db.properties para la conexion a la base de datos (ubicados en src/main/resources)
- Instalar las dependencias del archivo pom.xml con Maven.
- Lanzarlo con un servidor

## Arquitectura

Todos los paquetes deben estar bajo la estructura org.epis.minierp.*
Cada capa está representada por un paquete y contiene 4 modulos (subpaquetes), excepto security, model y util:

- compras
- contabilidad
- perifericos
- ventas
- general:  Para el login y registro de usuarios

### JSP (JavaServer Pages)

Para crear dinamicamente páginas HTML, están dentro de la carpeta WEB-INF para impedir el acceso directo.
Solo la página de login.jsp y error.jsp estan disponibles para acceso directo. Las demás paginas deben accederse por medio de los servlets.
En WEB-INF/tags está el archivo template.tag, que debe ser una plantilla para la creación de todos los JSP, porque contiene la cabecera y el pie de página.
template.tag tiene dos atributos que pueden ser modificados: 'titulo' que debe ser una etiqueta tipo <title> dependiendo de la página y 'contenido' para agregar contenido en el <body>

### Controller

org.epis.minierp.controller.*

Servlets que interactuan directamente con los JSP. Todos los servlets deben estar registrados en el archivo WEB-INF/web.xml

### DAO (Data Access Object)

org.epis.minierp.dao.*

Clases encargadas de acceder a datos almacenados. Utilizan HibernateUtil (abrir una sesión en la base de datos), clases de la capa model y en algunos casos clases de la capa DTO.

### DTO (Data Transfer Object)

org.epis.minierp.dto.*

Es una clase simple similar a las clases en la capa model, con la diferencia que tiene algunos atributos más representativos para implementar la aplicación.

Ejemplo:
- La clase Usuario de la capa model tiene como atributo tipUsuCod, que en realidad solo es un numero que indica el tipo de rol del usuario
- Cada vez que un usuario acceda a su perfil, se debe hacer una consulta a la base de datos por el tipUsuDet.
- Para evitar eso, se realiza una sola consulta al inicio y se obtiene un objeto UsuarioDto que si contiene el tipUsuDet

### Model

Refleja una entidad de la base de datos mapeada como objeto, deben estar registradas en el archivo hibernate.cfg.xml. Los atributos de las clases de esta capa deben ser los mismos que en la base de datos. Todas las clases deben tener 'implements Serializable' para poder funcionar.

### Security

Aqui están los filtros para impedir el acceso de usuarios no autorizados

- La unica ruta libre es: /
- Las rutas protegidas por el login son: /secured/* (LoginFilter)
- Las rutas protegidas para el usuario 'Vendedor' es: /secured/ventas/* (VentasFilter)
- Las rutas protegidas para el usuario 'Comprador' es: /secured/compras/* (ComprasFilter)
- Las rutas protegidas para el usuario 'Contador' es: /secured/contabilidad/* (ContabilidadFilter)
- Las rutas protegidas para el usuario 'Administrador' es: /secured/general/* (GeneralFilter)

Considerar esto al momento de mapear los servlets con las rutas en el archivo WEB-INF/web.xml, cualquier ruta fuera de /secured, podrá ser accedida sin necesidad de login.
El modulo de periféricos se encuentra dentro de la ruta /secured/perifericos/*, solo está protegido por el login, cualquier otro tipo de usuario puede acceder a este modulo.

Existe un filtro especial aplicado a cualquier ruta: HibernateSessionRequestFilter, se encarga de abrir una sesión con la base de datos y luego de ejecutar la llamada al servlet, cierra la sesión. No restringe el acceso a ninguna ruta en especial.

### Util

Contiene las clases de conexion a la base de datos. HibernateUtil es para la conexion con Hibernate (asociado con hibernate.cfg.xml), mientras que DbUtil para la conexión normal con el JDBC (asociado con db.properties).

## Dependencias y librerias instaladas

### Backend (Servlets)

Las dependencias se encuentran definidas en el archivo pom.xml, incluye:

- Los conectores a la base de datos (MySQL Connector y Hibernate)
- JavaEE: Para los HTTP Servlets
- JSTL: Libreria para generar etiquetas y usarlas en los JSP
- Apache Commons Beanutils: Libreria usada para copiar los atributos iguales de un model a un dto.
- Apache Commons Codec: Librería para encriptar las contraseñas del usuario
- JasperReports: Generación de los reportes.

### JSP (HTML, JS, CSS)

Si se utiliza el template.tag (WEB-INF/tags/template.tag), ya incluye:

- jQuery
- Bootstrap (Grid y elementos HTML)
- Font Awesome (iconos)
- Bootstrap Datetimepicker para incluir inputs tipo Fecha
- CSS y JS de la plantila web [SB-Admin2](https://startbootstrap.com/template-overviews/sb-admin-2/)
