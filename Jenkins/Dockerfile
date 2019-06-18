FROM jenkins/jenkins:lts

USER root

ENV USER 'jenkins'

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz && \
        tar xzvf docker-17.04.0-ce.tgz && \ 
        mv docker/docker /usr/local/bin && \ 
        rm -r docker docker-17.04.0-ce.tgz
        
RUN apt-get update && apt-get install -y python python-pip postgresql-client postgresql

RUN groupadd docker
RUN usermod -aG docker $USER

RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&  \
        mv /usr/local/bin/docker-compose /usr/bin/docker-compose && \
        chmod +x /usr/bin/docker-compose

RUN docker run --name bd-postgres -e POSTGRES_PASSWORD=postgres -d -p 5555:5432 postgres