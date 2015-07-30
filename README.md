Simple docker/django-pandas image
=================================

Simple Django/Pandas image based on ubuntu:trusty

This image must be used under a NGINX proxy.

You must import the /app directory from the host.

`docker run --name www -v /srv/www/app:/app -d loobaz/django-pandas`

Image available on DockerHub: https://registry.hub.docker.com/u/loobaz/django-pandas
