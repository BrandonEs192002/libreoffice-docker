# Usar una imagen base de Ubuntu
FROM ubuntu:20.04

# Instalar LibreOffice
RUN apt-get update && apt-get install -y \
    libreoffice \
    && rm -rf /var/lib/apt/lists/*

# Exponer el puerto donde se hará la conversión
EXPOSE 8080

# Ejecutar LibreOffice en modo headless para convertir archivos a PDF
CMD ["libreoffice", "--headless", "--invisible", "--convert-to", "pdf", "--outdir", "/tmp", "/documents/*.docx"]
