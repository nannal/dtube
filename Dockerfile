FROM node:latest

COPY ./ /dtube
WORKDIR /dtube
RUN apt-get update -y
RUN apt-get install curl -y
RUN curl "https://install.meteor.com/" | /bin/sh

RUN npm install

EXPOSE 3000
CMD [ "meteor","--allow-superuser" ]
