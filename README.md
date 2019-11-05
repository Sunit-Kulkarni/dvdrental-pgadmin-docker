# dvdrental-pgadmin-docker

## Overview
PostgreSQL playground running on Docker with Pgadmin webinterface.
This repo is inspired by https://github.com/rudibroekhuizen/docker-postgresplus

## Usage
Install Docker. Clone this repo to your local machine. Run docker-compose: 
```bash
docker-compose up
```

### Open pgAdmin webinterface
```bash
http://localhost:5050
```
Database, username and password: postgres


### Useful commands
```bash
# Check CPU consumption
$ docker stats $(docker inspect -f "{{ .Name }}" $(docker ps -q))

# Remove containers plus volumes
$ docker-compose down -v --remove-orphans --rmi all
```