FROM centos
LABEL version=1.0
LABEL description="This is an apache image"
LABEL vendor=jasiel
RUN yum install httpd -y
COPY startbootstrap-freelancer /var/www/html
RUN echo "$(whoami)" > /var/www/html/user1.html
RUN useradd jasiel
USER jasiel
RUN echo "$(whoami)" > /tmp/user2.html
USER root
RUN cp /tmp/user2.html /var/www/html/user2.html
CMD apachectl -DFOREGROUND

