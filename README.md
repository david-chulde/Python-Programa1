﻿# Python-Programa1
# Creación de un programa en python con Docker y subirlo a Github y DockerHub

## PASO 1: Crear un Dockerfile
En la misma carpeta del proyecto, crea un archivo llamado Dockerfile (sin extensión).

Agrega el siguiente contenido al Dockerfile:
### Usa una imagen base de Python
FROM python:3.8-slim

### Establece el directorio de trabajo en el contenedor
WORKDIR /app

### Copia el archivo app.py al contenedor
COPY app.py .

### Comando para ejecutar el script
CMD ["python", "app.py"]


FROM python:3.8-slim: Usa una imagen ligera de Python 3.8 como base.
WORKDIR /app: Establece el directorio de trabajo en el contenedor.
COPY app.py .: Copia el archivo app.py al contenedor.
CMD ["python", "app.py"]: Ejecuta el script app.py cuando se inicie el contenedor.

## Paso 2: Construir la Imagen Docker
Abre la terminal en Visual Studio Code o en la línea de comandos.

Navega hasta la carpeta de tu proyecto.

Ejecuta el siguiente comando para construir la imagen Docker:
docker build -t hola-mundo-python .

## Paso 3: Ejecutar el Contenedor
Una vez que la imagen se haya construido correctamente, ejecuta el siguiente comando para iniciar el contenedor:

docker run hola-mundo-python

# Parte 2: Subir la Imagen a Docker Hub
## Inicia sesión en Docker Hub desde la terminal (si aún no has iniciado sesión).

docker login

## Etiqueta la imagen con el nombre de usuario y el nombre del repositorio de Docker Hub.

Reemplaza <nombre_de_usuario> con tu nombre de usuario en Docker Hub y <nombre_del_repositorio> con el nombre de tu repositorio de Docker Hub.

docker tag hola-mundo-python <nombre_de_usuario>/hola-mundo-python

## Sube la imagen a Docker Hub:

docker push <nombre_de_usuario>/hola-mundo-python

Después de que el proceso de carga termine, tu imagen estará disponible en Docker Hub bajo el nombre nombre_de_usuario/hola-mundo-python.
