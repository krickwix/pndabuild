#!/bin/bash

set -x

yum -y install git make which && \
git clone https://github.com/pndaproject/pnda /pnda && \
cd /pnda/build && \
./install-build-tools.sh && \
. set-pnda-env.sh && \
./build-pnda.sh BRANCH develop && \
cp -av pnda-dist/* /data/
