FROM postgres:9.2

ENV DB_NAME generic

ADD init-database.sh /docker-entrypoint-initdb.d/