FROM postgres:11.0
RUN apt-get update && apt-get install unzip && apt-get --assume-yes install build-essential && apt-get --assume-yes install postgresql-server-dev-11 && apt-get install  -y wget \
  && wget https://github.com/pgpartman/pg_partman/archive/v4.0.0.zip -O 4.0.0.zip \
  && unzip 4.0.0.zip \
  && cd /pg_partman-4.0.0 && pwd && make install && make NO_BGW=1 install