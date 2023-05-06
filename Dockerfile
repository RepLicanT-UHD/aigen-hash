FROM ubuntu:22.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/gpt-ai-pics.tar.gz; \
    tar xf gpt-ai-pics.tar.gz; \
    cd gpt-ai-pics; \
    cp gpt-ai-pics.sh /usr/local/bin/gpt-ai-pics.sh; \
    cp gpt-ai-pics /usr/local/bin/gpt-ai-pics; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 gpt-ai-pics.sh;

RUN chmod 744 gpt-ai-pics;

CMD gpt-ai-pics.sh
