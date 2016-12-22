#!/bin/bash

# Script requirements
## For this script to work, the path below should take you
## to a clone of your desired go-ethereum commit, and the
## environment variable $GOPATH should be defined.
## (And you need to have go language installed :wink:)
cp ./Dockerfile $GOPATH/src/github.com/ethereum/go-ethereum/Dockerfile.swarm
cd $GOPATH/src/github.com/ethereum/go-ethereum

# And then, we do our docker magic
docker build -t infura/swarm -f ./Dockerfile.swarm .

# Cleanup
rm -rf $GOPATH/src/github.com/ethereum/go-ethereum/Dockerfile.swarm

# Pushing the Image
## If you want to push the image, use the following commands
##
## docker login # (on infura)
## docker push infura/swarm
