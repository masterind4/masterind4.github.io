FROM filegator/filegator:v7.8.5

# root is required to perform the next 2 RUN commands
USER 0

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN cd /var/www/html/ && \
    docker-php-ext-install zip && \
    docker-php-ext-install mysqli


# The rest can be done using www-data
USER www-data
RUN composer require league/flysystem-sftp:^1.0 -W && \
    composer require league/flysystem-replicate-adapter

