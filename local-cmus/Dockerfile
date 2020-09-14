ARG BUILD_FROM=hassioaddons/base:7.0.3
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache cmus
RUN sed -i 's/geteuid/getppid/' /usr/bin/cmus

COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
