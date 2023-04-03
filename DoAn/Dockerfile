FROM php:8.0-apache
RUN apt-get update -y && apt-get install -y libmariadb-dev && docker-php-ext-install mysqli && docker-php-ext-install pdo_mysql
RUN a2enmod rewrite
ENV ALLOW_OVERRIDE All
WORKDIR /var/www/html