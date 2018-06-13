#!/bin/bash 

set -x

docker volume create pnda_repo
docker build --rm -t local/pndabuilder pndabuild
docker build --rm -t local/pndamirror pndamirror

