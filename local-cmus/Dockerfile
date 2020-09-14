ARG BUILD_FROM=hassioaddons/base:7.0.3
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache cmus

VOLUME /etc/cmus
WORKDIR /etc/cmus

ENV CMUS_HOME=/etc/cmus
ENV USERNAME=root

COPY run.sh /
RUN chmod a+x /run.sh \
  && echo "set output_plugin=pulse" > rc

ENTRYPOINT [ "/run.sh" ]
