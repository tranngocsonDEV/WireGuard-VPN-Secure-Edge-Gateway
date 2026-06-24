FROM jc21/jc21/nginx-proxy-manager:latest
RUN apt-get update && apt-get install -y python3-pip && pip3 install certbot-dns-duckdns --break-system-packages

