#!/bin/bash

echo "Appling database migrations..."
python Movie_project/manage.py makemigrations 
python Movie_project/manage.py migrate
python Movie_project/manage.py runserver 0.0.0.0:8000  


exec "$@"