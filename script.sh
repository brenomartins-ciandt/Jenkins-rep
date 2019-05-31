#!/bin/bash

docker-compose build

docker-compose up -d

psql    --host=localhost    --port=5555    --username=postgres    --password   --file acesso_init.sql


