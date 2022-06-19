FROM alpine

MAINTAINER Blesson

RUN apk update && apk add apache2 curl vim

WORKDIR /var/www/localhost/htdocs/

COPY index.html .

EXPOSE 8087

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
