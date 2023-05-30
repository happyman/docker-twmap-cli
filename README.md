# docker-twmap-cli
create map locally
```
git clone https://github.com/happyman/docker-twmap-cli.git
cd docker-twmap-cli

./build.sh

chmod 755 ./twmap.sh

./twmap.sh
Usage: /twmap/twmap_gen/cmd_make2.php -r 236:2514:6:4:TWD67 -O outdir -v 2016 -t title [-p][-m /tmp][-g gpxfile:0:0][-c][-G][-e][-3][-d]
必須參數:
       -r params: startx:starty:shiftx:shifty:datum  datum:TWD67 or TWD97
       -O outdir: /home/map/out/000003 輸出目錄
       -v 3|2016: 經建3|魯地圖
       -t title: title of image
選用參數:
       -p 1|0: 1 是澎湖 pong-hu
       -g gpx_file:trk_label:wpt_label 利用GPX檔案產生
       -c keep color 彩圖
       -e draw 100M 格線
       -G merge user track_logs 包含使用者行跡
       -3 for A3 output 輸出A3
       -m /tmp tmpdir 暫存檔存放目錄
除錯用 -d debug
       -s 1-5: from stage 1: create_tag_png 2: split images 3: make simages 4: create txt/kmz 5: create pdf.
       -S use with -s, if -s 2 -S, means do only step 2
以下地圖產生器使用:
       -i ip: log remote ip address --agent myhost
       -l log_channel --logurl_prefix for custom url, ex: ws://myhost:9002/twmap_
       -a callback url when done


./test.sh
```

