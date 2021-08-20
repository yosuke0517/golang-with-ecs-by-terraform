FROM golang:1.16.4-alpine as dev

WORKDIR /app

COPY . .

CMD ["go", "run", "main.go"]

FROM golang:1.16.4-alpine as build

WORKDIR /build

COPY . .

RUN go build -o golang-with-ecs-by-terraform ./main.go

FROM alpine as prd

WORKDIR /app

COPY --from=build /build/golang-with-ecs-by-terraform .

RUN addgroup go \
    && adduser -D -G go go \
    && chown -R go:go /app/golang-with-ecs-by-terraform

CMD ["./golang-with-ecs-by-terraform"]

