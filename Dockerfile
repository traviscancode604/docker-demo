FROM ubuntu:lunar-20230314

RUN apt-get update \
  && apt-get install -q -y \
    vim 


WORKDIR /app

COPY ./scripts ./scripts
# COPY ./lyrics.txt ./lyrics.txt
# COPY ./lorem-ipsum.txt ./lorem-ipsum.txt
COPY ./abe.txt ./abe.txt
RUN chmod -R 755 ./scripts

# USER 1001
SHELL ["bin/bash", "-c"]
ENTRYPOINT ["/app/scripts/docker-entrypoint.sh"]