FROM golang:1.5.1

ENV GOROOT_BOOTSTRAP=/usr/local/go
ENV GOOS=linux
ENV GOARCH=arm
ENV GOARM=6

RUN apt-get update \
    && apt-get install -y bzip2

WORKDIR /usr/local/go/src
CMD ./bootstrap.bash && mv /usr/local/go-$GOOS-$GOARCH-bootstrap.tbz /usr/src/go-$GOOS-$GOARCH-bootstrap.tbz
