FROM centos
LABEL version=1.0
LABEL description="This is an apache image"
LABEL vendor=jasiel
RUN yum install httpd -y
WORKDIR /var/www/html
COPY startbootstrap-freelancer .
ENV contenido prueba
RUN echo "$contenido" > /var/www/html/prueba.html
EXPOSE 8080
CMD apachectl -DFOREGROUND

