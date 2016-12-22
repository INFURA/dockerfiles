FROM alpine:3.3

# Uncomment the following line, and comment the one using
# "git clone" below, to package your current go-ethereum repository
## ADD . /go-ethereum

RUN \
   apk add --update git go make gcc musl-dev                          && \
   git clone https://github.com/ethereum/go-ethereum.git /go-ethereum && \
   (cd /go-ethereum                                                   && \
    build/env.sh go run build/ci.go install ./cmd/swarm)              && \
    cp go-ethereum/build/bin/swarm /swarm                             && \
   apk del git go make gcc musl-dev                                   && \
   rm -rf /go-ethereum && rm -rf /var/cache/apk/*

ENTRYPOINT ["/swarm"]
