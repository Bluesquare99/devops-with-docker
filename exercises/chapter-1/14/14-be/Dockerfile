FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./example-backend .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

CMD ["./server"]