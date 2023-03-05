FROM php:7.4-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN sed -i 's/Require local/Require all granted/' /etc/apache2/sites-available/000-default.conf
# Copy the website files to the container
COPY index.php /var/www/html/

EXPOSE 80