FROM library/jenkins:2.7.4

MAINTAINER piotr.figlarek@gmail.com

USER root

RUN apt-get update 

# Buildroot requirements and some handy tools used during software compilation, testing, etc.
RUN apt-get install -y sudo make gcc g++ patch cpio rsync bc graphviz python-pip doxygen cmake git ruby

# Sphinx documentation generator
RUN pip install -U Sphinx
RUN pip install -U sphinxcontrib-plantuml 

# allow to use sudo in the future
RUN rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
