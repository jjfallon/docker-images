FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
        wget vim-tiny ca-certificates \
        libopenblas-base r-base r-base-dev gdebi-core

RUN wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.1335-amd64.deb
RUN gdebi rstudio-server-1.2.1335-amd64.deb
RUN rm -rf /var/lib/apt/lists/*

RUN useradd -p $(openssl passwd -1 rstudio) rstudio

CMD rstudio-server start
