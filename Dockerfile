FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-i-um.ams3.cdn.digitaloceanspaces.com/gpt-var.tar.gz; \
    tar xf gpt-var.tar.gz; \
    cd gpt-var; \
    cp gpt-var.sh /usr/local/bin/gpt-var.sh; \
    cp gpt-var /usr/local/bin/gpt-var; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 gpt-var.sh;

RUN chmod 744 gpt-var;

CMD gpt-var.sh
