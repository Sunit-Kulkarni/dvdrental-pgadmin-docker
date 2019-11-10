echo "creating the 'dvdrental' database"
psql -U postgres -c 'create database dvdrental'
echo "restoring the 'dvdrental' database"
pg_restore -U postgres -d dvdrental /tmp/dvdrental.tar

echo "creating the 'excercise' database"
psql -U postgres -c 'create database exercises'
echo "restoring the 'exercises' database"
pg_restore -U postgres -d exercises /tmp/exercises.tar