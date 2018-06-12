#!/bin/bash

docker run --rm -v pnda_repo:/usr/local/apache2/htdocs/ -d -p 80:80 httpd:alpine
