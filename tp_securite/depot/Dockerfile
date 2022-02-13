FROM php:7.4-apache
ENV FILEGATOR_VERSION=v7.7.1



RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt update && apt install -y unzip libzip-dev

# Main program is filegator. Versions are available on https://filegator.io
RUN curl -LJ -o filegator.zip https://github.com/filegator/filegator/releases/download/${FILEGATOR_VERSION}/filegator_${FILEGATOR_VERSION}.zip && \
    unzip filegator.zip -d /var/www/html/ && \
    mv /var/www/html/filegator/* /var/www/html/ && \
    rm -rf /var/www/html/filegator && \
    mkdir -p private/logs && \
    chown 33 -R /var/www/html && \
    rm filegator.zip

RUN cd /var/www/html/ && \
    docker-php-ext-install zip && \
    docker-php-ext-install mysqli && \
    composer require league/flysystem-sftp:^1.0 -W && \
    composer require league/flysystem-replicate-adapter
