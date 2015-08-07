Simple docker/django-pandas image
=================================

Simple Django/Pandas image based on ubuntu:trusty

You must import the /app directory from the host.

`docker run --name django -v /srv/www/app:/app --link mysql:mysql -p 80:8000 -d loobaz/django-pandas`

Image available on DockerHub: https://registry.hub.docker.com/u/loobaz/django-pandas
