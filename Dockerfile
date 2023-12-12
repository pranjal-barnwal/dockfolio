FROM ubuntu:latest
LABEL "Author"="Pranjal Kumar"
LABEL "Project"="dockfolio"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install apache2 git -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD dockfolio.tar.gz /var/www/html/
