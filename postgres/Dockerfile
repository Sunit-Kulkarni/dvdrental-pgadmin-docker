FROM postgres:10

# Install apt packages
RUN apt-get update \
  && apt-get install -qqy --no-install-recommends \
    unzip \
  && apt-get clean

# Load and extract the zip archive
WORKDIR /
ADD dvdrental.zip /
RUN unzip /dvdrental.zip

# Load the extract script into the "magic pocket"
COPY restoredb.sh /docker-entrypoint-initdb.d/

EXPOSE 5432
