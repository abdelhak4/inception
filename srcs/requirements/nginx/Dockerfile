FROM debian:buster

RUN apt-get -y update && apt-get -y install nginx  openssl 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/key.key -out /etc/ssl/certs/cert.crt -subj \
    /C=MA/ST=Ben\ Guerir/L=Ben\ Guerir\ City/O=1337/OU=IT/CN=ael-mous.42.fr
COPY conf/default.conf /etc/nginx/conf.d/
ENTRYPOINT ["nginx", "-g", "daemon off;"]