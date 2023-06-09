FROM debian:buster

RUN apt-get -y update
RUN apt install php php-fpm php-mysql php-mysql curl -y 
COPY ./conf/script.sh .
RUN chmod +x script.sh
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
ENTRYPOINT ["sh",  "script.sh"]