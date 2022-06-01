FROM golang:1.11-alpine

LABEL maintainer="matthias.lauss@students.fh-hagenberg.at"
WORKDIR /src
COPY main.go ./
CMD ls
RUN go build -o /usr/myapp
EXPOSE 8888
CMD "/usr/myapp"

