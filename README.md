# Django Movies Project

This is a Django-based movie review website, Dockerized for easy setup and deployment.

The project allows users to browse movies, submit reviews, and rate movies.

This guide will show you how to set up and run the project using Docker.

1. Clone this git repo:

git clone https://github.com/omarhallomi7/Django-Movies

2. build a docker image using the Dockerfile in root directory of this repo :

docker build -t image_name .

3. start the container :

docker run -p 8000:8000 -d image_name

4. go to browser localhost:8000
