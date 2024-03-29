FROM golang:1.19-alpine AS build

WORKDIR /usr/app

COPY go.mod go.sum ./

RUN go mod download

COPY . ./

EXPOSE 8080

RUN go build -o /app


FROM alpine:3.16

WORKDIR /

COPY --from=build /app /app
COPY ./services/mailer/*html /services/mailer/

EXPOSE 8080

ENTRYPOINT [ "/app" ]