FROM golang:1.16

EXPOSE 8080

ADD ./material-applications/example-backend ./example-backend

WORKDIR ./example-backend

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:500

RUN go test ./...
RUN go build
RUN ls

CMD ./server