FROM richarvey/nginx-php-fpm:3.1.4

COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG true
ENV DB_CONNECTION pgsql
ENV DB_HOST dpg-ckfr36uct0pc73dfg5n0-a
ENV DB_PORT 5432
ENV DB_DATABASE ecomdb_1bwu
ENV DB_USERNAME root
ENV DB_PASSWORD JvXv3vW15LjOHDUu10clDAnntI30cJtK

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]
