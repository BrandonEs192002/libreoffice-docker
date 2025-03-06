# Usar una imagen base de Ubuntu
FROM ubuntu:20.04

# Establecer la zona horaria de manera no interactiva
ENV DEBIAN_FRONTEND=noninteractive

# Instalar LibreOffice
RUN apt-get update && apt-get install -y \
    libreoffice \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

# Comando por defecto para iniciar el contenedor
# CMD ["some_command"]
