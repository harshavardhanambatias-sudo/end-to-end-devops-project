<<<<<<< HEAD
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

=======
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

>>>>>>> 74eaa8f439ed57fa0347f08dbf9cda7d41e014d2
CMD ["python", "app.py"]