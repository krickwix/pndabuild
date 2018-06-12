#!/bin/bash

set -x

yum -y install git
git clone https://github.com/pndaproject/pnda /pnda
yum -y remove git
yum -y install gettext
cd /pnda/mirror
./create_mirror_rpm.sh && \
./create_mirror_misc.sh && \ 
./create_mirror_hdp.sh && \
./create_mirror_python.sh && \
./create_mirror_apps.sh && \
cp -av mirror-dist/* /data/
