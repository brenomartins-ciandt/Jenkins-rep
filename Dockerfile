FROM anapsix/alpine-java

COPY acesso.jar .
COPY acesso_init.sql .

EXPOSE 9095

RUN apt-get update && apt-get install python python-pip postgresql-client postgresql

ENV PORT=5555
ENV DATASOURCE_USERNAME=postgres
ENV DATASOURCE_PASSWORD=postgres
ENV HOST=172.18.0.1
ENV DBNAME=postgres
ENV DATASOURCE_URL=jdbc:postgresql://$HOST:$PORT/$DBNAME

ENTRYPOINT java \
-Dspring.datasource.url=$DATASOURCE_URL \
-Dspring.datasource.username=$DATASOURCE_USERNAME \
-Dspring.datasource.password=$DATASOURCE_PASSWORD \
-jar acesso.jar


