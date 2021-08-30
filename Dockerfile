FROM golang:1.14.15-alpine

# RUN mkdir -p /go/src/v1/repos/ooki
WORKDIR /go/src/v1/repos/ooki

COPY . /go/src/v1/repos/ooki
RUN go build

CMD ["./hello-go"]
