FROM happyman/docker-twmap-base
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer && \
    git clone https://github.com/happyman/twmap && \
    cd twmap/twmap_gen && composer install && cp config.inc.php.sample config.inc.php && \
    mkdir -p /workdir && chmod -R a+rwX /workdir
    		
USER ${USERNAME}
WORKDIR /workdir
VOLUME ["/workdir"]
