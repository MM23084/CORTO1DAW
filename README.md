Dockerización de Aplicación Spring Boot:

Este repositorio contiene una aplicación Spring Boot dockerizada como parte del examen corto #1 para la asignatura de Desarrollo de Aplicaciones Web.
Descripción
La aplicación es una API REST desarrollada con Spring Boot que proporciona un endpoint para verificar la autenticación de usuarios. La aplicación ha sido dockerizada utilizando Docker y Docker Compose, permitiendo su fácil despliegue y ejecución en cualquier entorno.

Estructura del Proyecto:

Dockerfile: Configuración para la creación de la imagen Docker de la aplicación.
docker-compose.yml: Configuración para orquestar los servicios necesarios (aplicación Spring Boot y base de datos PostgreSQL).
.gitignore: Configuración para excluir archivos y carpetas no deseados del control de versiones.
src/: Código fuente de la aplicación Spring Boot.


Instrucciones de Ejecución:


Requisitos Previos:

Docker y Docker Compose instalados

Pasos para Ejecutar:

Clonar el repositorio:
git clone https://github.com/MM23084/CORTO1DAW


Iniciar los contenedores con Docker Compose:
docker-compose up


Acceder a la aplicación:
http://localhost:9091/api/test/algo@gmail.com


Características:


Dockerización completa de la aplicación Spring Boot
Configuración de Docker Compose para orquestar servicios
Conexión a base de datos PostgreSQL
API REST para verificación de autenticación

Notas del Desarrollo

-Se utilizó el wrapper de Maven (mvnw) para compilar la aplicación dentro del contenedor


-Se configuró el parámetro -DskipTests para evitar la ejecución de pruebas durante la compilación


-Se excluyó la carpeta target/ del repositorio mediante el archivo .gitignore


Autor:

Ricardo Antonio Mora Morales - [MM23084]
