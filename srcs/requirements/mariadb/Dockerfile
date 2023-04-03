FROM debian:buster

RUN apt-get -y update && apt install -y mariadb-server mariadb-client
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/setup.sh .
RUN chmod +x setup.sh
# RUN mkdir -p /run/mysqld/ && touch /run/mysqld/mysqld.sock
RUN  service mysql start && ./setup.sh
EXPOSE 3306
CMD ["mysqld"]
