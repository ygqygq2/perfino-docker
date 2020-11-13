# Dockerfile for perfino
FROM openjdk:8

LABEL maintainer "29ygq@sina.com"

ENV perfino_url="https://download-gcdn.ej-technologies.com/perfino/perfino_unix_3_2_1.tar.gz"

RUN cd /opt/ \
  && curl -o /tmp/perfino.tar.gz $perfino_url \
  && tar -zxf perfino.tar.gz \
  && rm -f /tmp/perfino.tar.gz

CMD ["/opt/perfino/bin/perfino_console"]

