FROM nginx:1.13-alpine

RUN install -d -o root -g root -m 0755 /etc/nginx && \
    install -d -o nobody -g nobody -m 0755 /opt/httpd/docs/mail.domain.tld

COPY nginx.conf /etc/nginx/nginx.conf
