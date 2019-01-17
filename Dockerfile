FROM jshimko/meteor-launchpad:latest
LABEL "project.home"="https://github.com/nannal/dtube"
RUN git clone -b Dockify git://github.com/nannal/dtube
WORKDIR /dtube
RUN meteor npm install
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
