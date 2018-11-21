FROM vimily/php-dockerize:fpm-alpine

RUN apk add jpeg-dev libpng-dev icu-dev && \
    docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd pcntl intl zip pdo_mysql

