FROM debian:buster

RUN apt-get update && \
	 apt-get install -y curl php-fpm php-mysql mariadb-client sendmail && \
     mkdir -p /var/www/html/ && \
     mkdir -p /run/php/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# RUN wp --info
COPY ./tools/wp.sh /

RUN chmod +x wp.sh

CMD ["/wp.sh"]