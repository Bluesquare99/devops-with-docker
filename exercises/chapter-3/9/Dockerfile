FROM golang:1.24.1-alpine3.21 AS build

EXPOSE 8080

ADD ./material-applications/example-backend ./example-backend

WORKDIR ./example-backend

RUN go test ./...

RUN go build

RUN echo $(ls /bin)

RUN echo $(pwd) 

FROM alpine:3.14

COPY --from=build /go/example-backend/server ./server

CMD ./server