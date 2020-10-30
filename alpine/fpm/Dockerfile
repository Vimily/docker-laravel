FROM vimily/php-dockerize:fpm-alpine

ENV BUILD_TOOLS autoconf g++ make jpeg-dev libpng-dev libzip-dev icu-dev freetype-dev 

RUN apk add git $BUILD_TOOLS && \
    pecl install mailparse && \
    docker-php-ext-enable mailparse && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd pcntl intl zip pdo_mysql exif && \
    php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');" && \
    php /tmp/composer-setup.php --install-dir=/usr/bin --filename=composer --version=1.10.16 && \
    php -r "unlink('/tmp/composer-setup.php');" && \
    composer global require "hirak/prestissimo"

