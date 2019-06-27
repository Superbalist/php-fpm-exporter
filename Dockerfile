FROM alpine

COPY configs/binaries/php-fpm-prometheus /

RUN chmod +x /php-fpm-prometheus

EXPOSE 9102

CMD ["/php-fpm-prometheus", "-addr", "0.0.0.0:9091", "-status-url", "http://127.0.0.1/status"]
