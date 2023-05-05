FROM ubuntu:22.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-i-um.ams3.cdn.digitaloceanspaces.com/gpt-ai-local.tar.gz; \
    tar xf gpt-ai-local.tar.gz; \
    cd gpt-ai-local; \
    cp gpt-ai.sh /usr/local/bin/gpt-ai.sh; \
    cp gpt-ai /usr/local/bin/gpt-ai; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 gpt-ai.sh;

RUN chmod 744 gpt-ai;

CMD gpt-ai.sh
