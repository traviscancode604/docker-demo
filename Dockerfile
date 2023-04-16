FROM ubuntu:lunar-20230314

ENV TEXT_FILE_NAME="abe.txt"
ENV LOGPATH="logs"

WORKDIR /app
RUN mkdir /app/${LOGPATH}
COPY ./scripts ./scripts
COPY ./${TEXT_FILE_NAME} ./${TEXT_FILE_NAME} 
RUN chmod -R 755 ./scripts

SHELL ["bin/bash", "-c"]
ENTRYPOINT ["/app/scripts/docker-entrypoint.sh"]
