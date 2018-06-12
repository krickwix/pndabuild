#!/bin/bash

docker volume create pnda_repo
docker run --rm -t -v pnda_repo:/data local/pndabuilder 2>&1 | tee pndabuilder.log &
docker run --rm -t -v pnda_repo:/data local/pndamirror 2>&1 | tee pndamirror.log

