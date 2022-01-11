FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod init andrerodri/goapp
RUN go test
RUN go test -coverprofile=coverage.out

COPY . .

CMD ["cat", "coverage.out"]


