FROM vimily/php-dockerize:alpine

RUN apk add jpeg-dev libpng-dev libzip-dev icu-dev freetype-dev git php7-pecl-mailparse && \
    docker-php-ext-enable /usr/lib/php7/modules/mailparse.so && \
    docker-php-ext-configure gd --with-jpeg-dir=usr/ --with-freetype-dir=usr/ && \
    docker-php-ext-install -j$(nproc) gd pcntl intl zip pdo_mysql exif && \
    php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');" && \
    php /tmp/composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('/tmp/composer-setup.php');" && \
    composer global require "hirak/prestissimo:^0.2"
