FROM ubuntu:14.04

ENV HOME /root

RUN apt-get update && apt-get upgrade --yes

RUN apt-get --yes --quiet install curl
RUN apt-get --yes --quiet install git
RUN apt-get --yes --quiet install mercurial

RUN cd /usr/local/src && \
    curl https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz | tar xz

ENV GOPATH /srv
ENV GOROOT /usr/local/src/go
ENV PATH ${PATH}:${GOROOT}/bin

WORKDIR /srv/

ENTRYPOINT ["go"]
