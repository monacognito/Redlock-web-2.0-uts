FROM php:8.1-apache 
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

# Composer: membangun image berisi aplikasi PHP

#Set direktori menjadi /var/www/html di dalam container.
WORKDIR /var/www/html 

#Set direktori menjadi /var/www/html di dalam container.
COPY index.php index.php

#Command ini mengubah kepemilikan dari /var/www/html ke www-data:www-data (umum digunakan untuk menjalankan web server PHP).
#Sesuai permintaan soal, permission dari 'w' dan 'x' untuk others di hilangkan.
RUN chown -R www-data:www-data /var/www/html/ && chmod -R o-wx /var/www

# Open Ports
EXPOSE 80
EXPOSE 7077
