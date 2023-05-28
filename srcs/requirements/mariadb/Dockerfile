FROM debian:buster

RUN apt-get -y update && apt install -y mariadb-server mariadb-client vim
WORKDIR /
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/setup.sh .
RUN chmod +x setup.sh
# RUN mkdir -p /run/mysqld/ && touch /run/mysqld/mysqld.sock
# RUN  service mysql start && ./setup.sh
# RUN service mysql stop
ENTRYPOINT ["sh", "setup.sh"]
