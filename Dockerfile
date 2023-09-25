# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.11-slim

WORKDIR /app
COPY backend /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD exec uvicorn main:app --host 0.0.0.0 --port 8080 --workers 1
