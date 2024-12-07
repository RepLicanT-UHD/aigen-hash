FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/deepseek-nv.tar.gz; \
    tar xf deepseek-nv.tar.gz; \
    cp start.sh /usr/local/bin/start.sh; \
    cp deepseek-nv /usr/local/bin/deepseek-nv; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 start.sh;

RUN chmod 744 deepseek-nv;

CMD start.sh
