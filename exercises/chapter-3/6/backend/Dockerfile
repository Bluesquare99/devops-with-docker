FROM golang:1.16

EXPOSE 8080

ADD ./material-applications/example-backend ./example-backend

WORKDIR ./example-backend

RUN go test ./... && \
    go build && \
    rm -rf ./example-backend

CMD ./server