FROM vimily/php-dockerize:alpine

RUN apk add jpeg-dev libpng-dev icu-dev freetype-dev git && \
    docker-php-ext-configure gd --with-jpeg-dir=usr/ --with-freetype-dir=usr/ && \
    docker-php-ext-install -j$(nproc) gd pcntl intl zip pdo_mysql && \
    php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');" && \
    php /tmp/composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('/tmp/composer-setup.php');" && \
    composer global require "hirak/prestissimo:^0.2"

