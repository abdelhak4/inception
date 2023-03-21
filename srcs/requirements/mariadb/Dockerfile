FROM debian:buster

RUN apt-get -y update && apt install -y mariadb-server
ENV MARIADB_ROOT_PASSWORD="password"
ENV MARIADB_DATABASE="demo"
ENV MARIADB_USER="user"
ENV MARIADB_PASSWORD="password"
RUN service mysql start
CMD ["echo", "hello" ]