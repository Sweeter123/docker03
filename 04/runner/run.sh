#!/bin/bash
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx -s reload
nginx -g 'daemon off;'