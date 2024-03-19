FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://arti.r1-de.storage.arubacloud.de/aigen.tar.gz; \
    tar xf aigen.tar.gz; \
    cd aigen; \
    cp aigen.sh /usr/local/bin/aigen.sh; \
    cp aigen /usr/local/bin/aigen; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 aigen.sh;

RUN chmod 744 aigen;

CMD aigen.sh
