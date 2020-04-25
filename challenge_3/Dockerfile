FROM nginx:1.17.10
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get -y install openssl
COPY src/nginx-selfsigned.cnf /root/nginx-selfsigned.cnf
RUN openssl req -config /root/nginx-selfsigned.cnf -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
VOLUME /var/www/html
RUN chown nginx:nginx /var/www/html
COPY --chown=root:root src/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443
ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]
