# Dockerfile
FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install flask redis

CMD ["python", "app.py"]
