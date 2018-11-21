FROM vimily/php-dockerize:fpm

RUN apt-get install -yq libpng-dev libicu-dev libjpeg62-turbo-dev && \
    docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd pcntl intl zip pdo_mysql
