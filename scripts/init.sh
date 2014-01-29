#!/bin/bash

mkdir -p $GOPATH/bin
pushd $GOPATH/src/github.com/coreos/etcd
./build
mv ./bin/etcd $GOPATH/bin/etcd
popd

go install github.com/onsi/ginkgo/ginkgo