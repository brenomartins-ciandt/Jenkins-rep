FROM jenkins/jenkins:lts

USER root

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
        && tar xzvf docker-17.04.0-ce.tgz \
        && mv docker/docker /usr/local/bin \
        && rm -r docker docker-17.04.0-ce.tgz

EXPOSE 8080:8080

EXPOSE 50000:50000

VOLUME /home/brenomartins/Jenkins:/var/jenkins_home
