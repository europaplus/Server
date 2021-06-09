FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install vim \
nginx php7.3-fpm mariadb-server wget
RUN apt-get -y install php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

COPY ./srcs/default /etc/nginx/sites-available/
COPY ./srcs/start.sh ./
COPY ./srcs/change_auto.sh ./

WORKDIR /var/www/html/

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
RUN tar -xf phpMyAdmin-5.0.4-english.tar.gz && rm -rf phpMyAdmin-5.0.4-english.tar.gz
RUN mv phpMyAdmin-5.0.4-english phpmyadmin
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xf latest.tar.gz && rm -rf latest.tar.gz

COPY ./srcs/config.inc.php ./phpmyadmin
COPY ./srcs/wp-config.php ./wordpress
RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=TR/L=KAZAN/O=42/OU=UN/CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/word.key -out /etc/ssl/word.crt
RUN chown -R www-data:www-data *

EXPOSE 80 443

CMD ["/bin/bash", "/start.sh"]