FROM nginx:latest
USER root
# --accept-key NGINX_GPGKEY
COPY runner/server.c /home/server.c
COPY runner/run.sh /home/run.sh
RUN apt-get update
RUN apt-get install -y gcc spawn-fcgi libfcgi-dev
WORKDIR /home
ENTRYPOINT ["sh", "./run.sh"]