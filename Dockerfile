FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean

RUN jenkins-plugin-cli --plugins \
    blueocean \
    docker-workflow

USER jenkins
