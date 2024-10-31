# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential gcc pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
WORKDIR /app/Movie_project
EXPOSE 8000

# Run the command to start your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
