FROM debian:buster

RUN apt-get -y update && apt install -y mariadb-server mariadb-client vim
WORKDIR /
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/setup.sh .
RUN chmod +x setup.sh
ENTRYPOINT ["sh", "setup.sh"]

