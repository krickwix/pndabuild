#!/bin/bash

yum -y install docker tmux
systemctl enable docker
systemctl start docker
