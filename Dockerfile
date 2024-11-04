# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app
ENV PYTHONUNBUFFERED=1
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential gcc pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/

COPY init_db.py /app/init_db.py
COPY db.json /app/db.json

WORKDIR /app/Movie_project
COPY db.json /app/Movie_project/db.json
EXPOSE 8000

# Run the command to start your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
# CMD ["sh", "-c", "python init_db.py && python manage.py runserver 0.0.0.0:8000"]

# docker-compose exec django python manage.py migrate
# docker-compose exec django python manage.py loaddata /app/db.json