FROM postgres:10.3

COPY dvdrental.tar /tmp/
COPY create_db.sh /docker-entrypoint-initdb.d/

EXPOSE 5432
