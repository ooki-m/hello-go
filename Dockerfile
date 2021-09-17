# FROM golang:1.14.15
FROM golang:1.14.15-alpine

# RUN mkdir -p /go/src/v1/repos/ooki
WORKDIR /go/src/v1/repos/ooki

COPY . /go/src/v1/repos/ooki
RUN go build &&\
  sleep 600
# RUN ls -la &&\
#   rm hello-go/go.mod &&\
#   go mod init hello-go

EXPOSE 8081
CMD ["./hello-go"]
