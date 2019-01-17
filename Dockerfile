FROM debian:stretch

LABEL "project.home"="https://github.com/nannal/dtube"
RUN apt-get update
RUN apt-get install curl git build-essential procps python -y
RUN curl https://install.meteor.com/ | sh
RUN meteor update --patch --allow-superuser

RUN git clone -b Dockify https://github.com/nannal/dtube
WORKDIR /dtube
RUN meteor npm install
RUN meteor npm install --save-exact @babel/runtime@7.0.0-beta.55
EXPOSE 3000

ENV D_SNAP 'http://localhost'
ENV D_SNAP_PORT '5000'
ENV D_SNAP_HTTP '1'

ENV D_UPLDR 'http://localhost'
ENV D_UPLDR_PORT '5000'
ENV D_UPLDR_HTTP 'http'

ENV D_SUBS 'http://localhost'
ENV D_SUBS_PORT '5000'
ENV D_SUBS_HTTP '1'
ENV PORT '3000'
CMD ["meteor", "--production", "--allow-superuser"]
