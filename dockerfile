# Dockerfile
FROM python:3.10-slim
WORKDIR /app
COPY ./backend /app
RUN pip install fastapi uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
