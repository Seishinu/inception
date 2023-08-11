FROM debian:stable

RUN apt-get update \
	&& apt-get install -y nginx openssl


RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/certificate.key \
	-x509 -days 365 -out /etc/ssl/certs/certificate.crt -subj "/CN=ynuiga.42.fr"

COPY conf/nginx.conf /etc/nginx/conf.d/nginx.conf


CMD ["nginx", "-g", "daemon off;"]