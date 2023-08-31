#!/bin/bash
# test build
log=""
#log="-l abc --logurl_prefix ws://twmap:9002/twmap_"
#debug="-d"
#dns="--add-host make.happyman.idv.tw:100.82.41.55"
range="244:2597:3:3:TWD67"
echo "test rudymap..."
./twmap.sh $debug -r $range -D 3x4 -G -v 2016 $debug $log $dns
echo "test twmap..."
./twmap.sh $debug -r $range -c -G -D 2x3 -v 3 $debug $log $dns
echo "test historical map..."
./twmap.sh $debug -r $range -G -D 2x3 -v 1904 $debug $log $dns
./twmap.sh $debug -r $range -G -D 4x6 -D 2x3 -v 1916 $debug $log $dns
./twmap.sh $debug -r $range -G -D 5x7 -D 2x3 -v 1921 $debug $log $dns
./twmap.sh $debug -r $range -G -D 1x2 -D 2x3 -v 1924 $debug $log $dns
echo done
