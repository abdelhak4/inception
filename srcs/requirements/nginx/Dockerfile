FROM debian:buster

RUN apt-get -y update && apt-get -y install nginx  openssl
# req allows you to specify the subject attributes like country..
RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/key.key -out /etc/ssl/certs/cert.crt -subj \
    /C=MA
COPY conf/default.conf /etc/nginx/conf.d/
ENTRYPOINT ["nginx", "-g", "daemon off;"]