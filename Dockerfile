FROM anapsix/alpine-java

COPY acesso.jar .
COPY acesso_init.sql .

ENV PORT=5555
ENV DATASOURCE_USERNAME=postgres
ENV DATASOURCE_PASSWORD=postgres
ENV HOST=172.28.1.2
ENV DBNAME=postgres
ENV DATASOURCE_URL=jdbc:postgresql://$HOST:$PORT/$DBNAME

EXPOSE 9095

ENTRYPOINT java \
-Dspring.datasource.url=$DATASOURCE_URL \
-Dspring.datasource.username=$DATASOURCE_USERNAME \
-Dspring.datasource.password=$DATASOURCE_PASSWORD \
-jar acesso.jar


