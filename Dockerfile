# Use an official Python runtime as a parent image
FROM python:3.11
WORKDIR /app/
COPY requirements.txt .

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential gcc pkg-config \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y gcc default-libmysqlclient-dev

RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["sh", "start_django.sh"] 

# docker-compose exec django python manage.py migrate
# docker-compose exec django python manage.py loaddata /app/db.json

