FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt install -y apache2-utils
COPY server.html /var/www/html
COPY server.css /var/www/html
EXPOSE 8088
CMD ["apache2ctl", "-D", "FOREGROUND"]