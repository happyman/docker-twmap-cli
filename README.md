# docker-twmap-cli

## create map locally
### build docker image yourself
```
git clone https://github.com/happyman/docker-twmap-cli.git
cd docker-twmap-cli

./build.sh
```
### use image from dockerhub
```
docker pull happyman/docker-twmap-cli:latest

```
### run it
```
./twmap.sh

必須參數:
       -r params: startx:starty:shiftx:shifty:datum  datum:TWD67 or TWD97
       -O outdir: /home/map/out/000003 輸出目錄
       -v 3|2016|1904|1916|1921|1924: 經建3|魯地圖|堡圖|蕃地|堡圖2|陸測
選用參數:
       -t title: title of image
       -p 1|0: 1 是澎湖 pong-hu
       -g gpx_file:trk_label:wpt_label 利用GPX檔案產生
       -c keep color 彩圖
       -e draw 100M 格線
       -G merge user track_logs 包含使用者行跡
       -3 for A3 output 輸出A3
       -D 5x7|4x6|3x4|2x3|1x2 等輸出 dimension, 可使用多次, 空則為 5x7
       -m /tmp tmpdir 暫存檔存放目錄
       --check 檢查相依執行程式
除錯用 -d debug

./test.sh

舉例: 
./twmap.sh -r 244:2579:3:3:TWD97 -D 3x4 -G -v 2016
```

