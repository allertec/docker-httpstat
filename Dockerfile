FROM alpine:3.7

RUN apk update && \
    apk upgrade && \
    apk add musl-dev && \
    apk add go && \
    apk add git

RUN go get -v github.com/davecheney/httpstat
RUN ls -la /usr/bin
ENV GOROOT /usr/lib/go
ENV GOPATH /root/go
ENV GOBIN /root/go/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin:/usr/lib/go/bin/

ENTRYPOINT ["httpstat"]
