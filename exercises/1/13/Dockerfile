FROM golang:1.16

EXPOSE 8080

ADD ./material-applications/example-backend ./example-backend

WORKDIR ./example-backend

RUN go test ./...
RUN go build
RUN ls

CMD ./server