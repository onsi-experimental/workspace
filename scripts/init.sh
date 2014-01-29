#!/bin/bash

git submodule update --init

go install github.com/gocart/vito

gocart

mkdir -p $GOPATH/bin
pushd $GOPATH/src/github.com/coreos/etcd
./build
mv ./bin/etcd $GOPATH/bin/etcd
popd

go install github.com/onsi/ginkgo/ginkgo