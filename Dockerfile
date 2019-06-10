FROM anapsix/alpine-java

COPY acesso.jar .
COPY acesso_init.sql .

EXPOSE 9095

ENTRYPOINT java \
-Dspring.datasource.url=$DATASOURCE_URL \
-Dspring.datasource.username=$DATASOURCE_USERNAME \
-Dspring.datasource.password=$DATASOURCE_PASSWORD \
-jar acesso.jar


