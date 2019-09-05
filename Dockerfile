FROM vimily/php-dockerize

RUN apt-get install -yq libpng-dev libicu-dev libjpeg62-turbo-dev libzip-dev git && \
    docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd pcntl intl zip pdo_mysql bcmath && \
    php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');" && \
    php /tmp/composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('/tmp/composer-setup.php');" && \
    composer global require "hirak/prestissimo:^0.2"

