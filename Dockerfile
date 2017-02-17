FROM php:5.6-apache
RUN apt-get update && \
    apt-get install -y python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git 

RUN git clone https://github.com/Th3-822/rapidleech.git ./
RUN chmod 777 -R files
RUN chmod 777 -R configs

COPY ./ /var/www/html













EXPOSE  80
