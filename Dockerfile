FROM happyman/docker-twmap-base:v2.0
RUN wget --tries=0 --timeout=2 -O - https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
## todo multi-arch 
    wget -O /usr/bin/websocat https://github.com/vi/websocat/releases/download/v1.11.0/websocat.x86_64-unknown-linux-musl && chmod a+x /usr/bin/websocat && \
    git clone https://github.com/happyman/twmap && cd twmap &&  git checkout a1891dc && \
    cd twmap_gen && composer install && cp config.inc.php.sample config.inc.php && \
    mkdir -p /workdir && chmod -R a+rwX /workdir && \
    wget -c --tries=0 --read-timeout=2 -O /tmp/sorted_array_web http://make.happyman.idv.tw/~happyman/stb/sorted_array_web && \
    wget -c --tries=0 --read-timeout=2 -O /tmp/sorted_array_web-97 http://make.happyman.idv.tw/~happyman/stb/sorted_array_web-97

    		
USER ${USERNAME}
WORKDIR /workdir
VOLUME ["/workdir"]
