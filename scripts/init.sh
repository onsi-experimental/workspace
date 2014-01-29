#!/bin/bash

echo "Updating Submodules"
git submodule update --init

echo "Installing gocart"
go install github.com/vito/gocart

echo "Running gocart"
gocart

echo "Building etcd"
mkdir -p $GOPATH/bin
pushd $GOPATH/src/github.com/coreos/etcd
./build
mv ./bin/etcd $GOPATH/bin/etcd
popd

echo "Installing ginkgo"
go install github.com/onsi/ginkgo/ginkgo