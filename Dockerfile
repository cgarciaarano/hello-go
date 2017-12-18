FROM repo.zooplus.de/golang:1.8 as builder
RUN go get -v github.com/cgarciaarano/hello-go 


FROM repo.zooplus.de/base/alpine3:latest
COPY --from=builder /go/bin/hello-go /usr/bin
CMD ["/usr/bin/hello-go"]
