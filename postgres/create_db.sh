echo "creating the 'dvdrental' database"
psql -U postgres -c 'create database dvdrental'
echo "restoring the 'dvdrental' database"
pg_restore -U postgres -d dvdrental /tmp/dvdrental.tar