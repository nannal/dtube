FROM debian

RUN apt-get update -y
RUN apt-get install curl
RUN curl "https://install.meteor.com/" | /bin/sh
COPY ./ /dtube
WORKDIR /dtube

RUN meteor npm install
EXPOSE 3000
CMD ["meteor"]
