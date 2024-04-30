FROM php:8.2-cli 

#baixa o script de instalação de extensões
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

#instala as extensões e o composer
RUN install-php-extensions gd pdo_mysql intl @composer
