FROM docker.io/ubuntu

RUN apt update -y
RUN apt install apache2 -y
COPY index.html style.css /var/www/html/
EXPOSE 80
CMD [ "apache2ctl", "-D", "FOREGROUND" ]


