FROM debian:buster

RUN apt-get update -y && apt install -y mariadb-server

COPY ./tools/script.sh /

RUN chmod 777 ./script.sh

CMD [ "/script.sh" ]