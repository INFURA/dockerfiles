#!/bin/bash

docker build -t consensysllc/go-ipfs:v0.4.4-custom-start .
# docker login # (on consensysllc)
docker push consensysllc/go-ipfs:v0.4.4-custom-start
