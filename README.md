# Build base
The project has been built basing on Git project [**httpstat**](https://github.com/davecheney/httpstat) and [**alpine**](https://alpinelinux.org/) linux distro.

# How to RUN it

### 1. Build image
To use **httpstat** we need to build Docker image first from Dockerfile:

**docker build -t httpstat .**

### 2. Use **httpstat**
Once the docker image has been built we can run container and make request to it:

docker run --rm httpstat https://www.google.com

TIP: you can add alias to your system to avoid typing long long docker run command :):

alias 'httpstat'='docker run --rm httpstat'

and then:

httpstat https://wwww.google.com


# TO DO:
- push docker image to docker alike hub
- improve README.md file with otions built into **httpstat**
- add infor regarding other ways of installing **httpstat**
- add some tests
