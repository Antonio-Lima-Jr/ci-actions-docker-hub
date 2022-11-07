FROM ubuntu:latest

EXPOSE 8080

WORKDIR /app

COPY ./main main

COPY ./templates templates

COPY ./assets assets

ENV HOST=postgres DBPORT=5432 USER=root PASSWORD=root DBNAME=root

CMD [ "./main" ]