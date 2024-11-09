# Usa una imagen base de Python
FROM python:3.8-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo app.py al contenedor
COPY app.py .

# Comando para ejecutar el script
CMD ["python", "app.py"]