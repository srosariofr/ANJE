# Imagen base ligera con Python 3.12
FROM python:3.12-slim

# Evita prompts interactivos y mejora logs
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

# Crea y usa el directorio de trabajo
WORKDIR /app

# Instala dependencias (si requirements.txt está vacío, no instala nada)
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copia el resto del código
COPY . .

# Comando por defecto para ejecutar el script
CMD ["python", "main.py"]
