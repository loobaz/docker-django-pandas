FROM ubuntu:trusty

MAINTAINER Pierre Breitschmitt <pierre@loobaz.com>

# Packages dependencies
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install \
	python-pip \
	python-mysqldb \
	python-numpy \
	python-scipy
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# PIP dependencies
RUN pip install Django==1.7
RUN pip install djangorestframework
RUN pip install django-picklefield
RUN pip install pandas==0.14.1
RUN pip install ystockquote
RUN pip install Yahoo-ticker-downloader
RUN pip install beautifulsoup4

# Startup script
ADD start.sh /start.sh
RUN chmod 755 /start.sh


# Application
RUN mkdir /app

VOLUME /app
WORKDIR /app

EXPOSE 8000

CMD ["/start.sh"]