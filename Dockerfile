FROM library/jenkins:2.19.1

MAINTAINER piotr.figlarek@gmail.com

USER root

# Buildroot requirements and some handy tools used during software compilation, testing, etc.
RUN apt-get update && apt-get install -y sudo make gcc g++ patch cpio rsync bc graphviz \
    python-pip doxygen cmake git ruby vim locales

# Sphinx documentation generator
RUN pip install -U Sphinx sphinxcontrib-plantuml

# C++ lint
RUN pip install -U cpplint 

# allow to use sudo in the future
RUN rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# default terminal
ENV TERM vt100

# set LOCALE to UTF8
## uncomment chosen locale to enable it's generation
RUN sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
## generate chosen locale
RUN locale-gen en_US.UTF-8
## set system-wide locale settings
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US
ENV LC_ALL en_US.UTF-8
# verify modified configuration
RUN dpkg-reconfigure --frontend noninteractive locales

USER jenkins
