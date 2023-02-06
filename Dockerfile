FROM happyman/docker-twmap-base:v1.0
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    git clone https://github.com/happyman/twmap && cd twmap && git checkout v2.91_v4.33 && \
    cd twmap_gen && composer install && cp config.inc.php.sample config.inc.php && \
    mkdir -p /workdir && chmod -R a+rwX /workdir && \
    curl -o /tmp/sorted_array_web http://make.happyman.idv.tw/~happyman/stb/sorted_array_web && \
    curl -o /tmp/sorted_array_web-97 http://make.happyman.idv.tw/~happyman/stb/sorted_array_web-97
    		
USER ${USERNAME}
WORKDIR /workdir
VOLUME ["/workdir"]
