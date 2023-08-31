FROM happyman/docker-twmap-base:v2.4
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN wget --tries=0 --timeout=2 -O - https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
## websocat multi-arch with arch
    wget -O /usr/bin/websocat https://github.com/vi/websocat/releases/download/v1.11.0/websocat.`arch`-unknown-linux-musl && chmod a+x /usr/bin/websocat && \
## 8f425c9 with api callback
## 04c7861 with agent option
## 14db2ef remove 經建一版
## v3.03_v4.34 use beanstalkd
## svg parse error 27a39a9 e17c92b
## v3.20_v4.36 可出歷史圖層
git clone --progress https://github.com/happyman/twmap && \
    cd twmap/twmap_gen && git checkout v3.20_v4.36 && composer install && cp config.inc.php.sample config.inc.php && \
    mkdir -p /workdir && chmod -R a+rwX /workdir 
    		
USER ${USERNAME}
WORKDIR /workdir
VOLUME ["/workdir"]
