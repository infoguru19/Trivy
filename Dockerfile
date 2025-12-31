FROM python:3.11-slim

# Security best practices
RUN useradd -m appuser

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

USER appuser

EXPOSE 8080

CMD ["python", "main.py"]
