FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-i-um.ams3.cdn.digitaloceanspaces.com/gpt-4.tar.gz; \
    tar xf gpt-4.tar.gz; \
    cd gpt-4; \
    cp gpt-4.sh /usr/local/bin/gpt-4.sh; \
    cp gpt-4 /usr/local/bin/gpt-4; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 gpt-4.sh;

RUN chmod 744 gpt-4;

CMD gpt-4.sh
