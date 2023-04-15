FROM ubuntu:lunar-20230314

RUN apt-get update \
  && apt-get install -q -y \
    vim 

WORKDIR /app
RUN mkdir /app/logs 
COPY ./scripts ./scripts

COPY ./abe.txt ./abe.txt
RUN chmod -R 755 ./scripts

USER 1001
SHELL ["bin/bash", "-c"]
ENTRYPOINT ["/app/scripts/docker-entrypoint.sh"]