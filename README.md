# Dockerized Jenkins CI 

Fork of official Jenkins docker with few extensions to simplify using it for embedded projects.
Main reason (and target) is to use this image to build Jenkins which is able to build [Buildroot](https://buildroot.org/) based project.

# Versioning

First three values shows Jenkins version used by docker.
Because for this same Jenkins version several dockers (with various bugfixes/improvements)
can be released, the last value is an incremented counter with information which docker version for this same Jenkins is created.

For example 2.19.1.1 means:

* 2.19.1 - Jenkins version,
* 1 - first docker release for Jenkins 2.19.1.

# Usage

## Docker compose

The most convinient way is to:

* download [this docker -compose file](https://github.com/filug/docker-jenkins/blob/docker-compose.yml),
* customize it (check [this link](https://docs.docker.com/compose/gettingstarted/#/step-3-define-services)),
* and setup working container as documented [here](https://docs.docker.com/compose/gettingstarted/#/step-4-build-and-run-your-app-with-compose).

## Traditional way

If you don't like [docker compose](https://docs.docker.com/compose/overview/) you can always download image in traditional way 

    docker pull filug/docker-jenkins 

# What is inside

[![](https://images.microbadger.com/badges/image/filug/docker-jenkins.svg)](https://microbadger.com/images/filug/docker-jenkins "Get your own image badge on microbadger.com")

# Links

* Docker hub: https://hub.docker.com/r/filug/docker-jenkins/

