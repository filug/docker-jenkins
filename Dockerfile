FROM jenkinsci/jenkins:2.4

MAINTAINER piotr.figlarek@gmail.com

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER ${user}
