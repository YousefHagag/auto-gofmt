FROM golang:1.23.0-alpine3.19

RUN apk --no-cache add bash git git-lfs &&\
    go install mvdan.cc/gofumpt@latest

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
