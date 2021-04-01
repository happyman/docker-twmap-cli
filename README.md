# docker-twmap-cli
create map locally


docker pull happyman/docker-twmap-cli
./twmap.sh
Usage: /twmap/twmap_gen/cmd_make2.php -r 236:2514:6:4:TWD67 [-g gpx:0:0] [-c] [-G] -O dir [-e] -v 1|3|2016 -t title [-i localhost]
       -r params: startx:starty:shiftx:shifty:datum  datum:TWD67 or TWD97
       -O outdir: /home/map/out/000003
       -v 1|3|2016: version of map,default 3
       -t title: title of image
       -i ip: log remote address
       -p 1|0: 1 if is pong-hu
       -g gpx_fpath:trk_label:wpt_label
       -c keep color
       -d debug
       -e draw 100M grid
       -s 1-5: stage 1: create_tag_png 2: split images 3: make simages 4: create txt/kmz 5: create pdf. debug purpose
          1 is done then go to 2, 3 ..
       -S use with -s, if -s 2 -S, means do only step 2
       -G merge user track_logs
       -3 for A3 output
       -l channel:uniqid to notify web, email from web interface
