FROM debian:bullseye-slim

RUN set -ex; \
  apt-get update; \
  apt-get install -y \
  libclass-dbi-mysql-perl \
  libfile-mimeinfo-perl \
  libio-socket-inet6-perl \
  libio-socket-ip-perl \
  libmail-imapclient-perl \
  libmail-mbox-messageparser-perl \
  libmime-tools-perl \
  libperlio-gzip-perl \
  libxml-simple-perl \
  unzip; \
  rm -rf /var/lib/apt/lists/*

COPY dmarcts-report-parser.pl /usr/local/bin

CMD [ "dmarcts-report-parser.pl" ]
