FROM golang:1.24.1-alpine3.21

EXPOSE 8080

ADD ./material-applications/example-backend ./example-backend

WORKDIR ./example-backend

RUN go test ./... && \
    go build && \
    rm -rf ./example-backend

CMD ./server