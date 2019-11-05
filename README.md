# dvdrental-pgadmin-docker

## Overview
PostgreSQL playground running on Docker with Pgadmin webinterface. This repo is inspired by 

1. https://github.com/rudibroekhuizen/docker-postgresplus 
2. https://smithjd.github.io/sqlpetr/articles/building-the-dvdrental-docker-image.html
3. https://github.com/tadaken3/postgres-dvdrental-database-dockerfiles

## Usage
Install Docker. Clone this repo to your local machine. Run docker-compose: 
```bash
docker-compose up
```

### Open pgAdmin webinterface
```bash
http://localhost:5050
```

1. Right click on Servers and click Create Server
2. Name : Docker Postgres DB Server
3. Check Connect now
3. Hostname/address : postgres
4. Port : 5432
5. Maintenance database : postgres
6. Password : postgres
7. Check Save password
8. Click blue save button
9. To Run queries, right click on dvdrental under Databases under Docker Postgres DB Server, then click Query Tool


### Useful commands
```bash
# Check CPU consumption
$ docker stats $(docker inspect -f "{{ .Name }}" $(docker ps -q))

# Remove containers plus volumes
$ docker-compose down -v --remove-orphans --rmi all
```