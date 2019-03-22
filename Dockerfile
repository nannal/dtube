FROM ulexus/meteor

COPY ./ /dtube
WORKDIR /dtube

RUN meteor npm install
EXPOSE 3000
CMD ["meteor"]
