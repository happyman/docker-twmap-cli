#!/bin/bash
# test build
log=""
#log="-l abc --logurl_prefix ws://twmap:9002/twmap_"
#debug="-d"
#dns="--add-host make.happyman.idv.tw:100.82.41.55"
range="244:2597:2:2:TWD67"
echo "test rudymap..."
./twmap.sh $debug -r $range -G -t test1 -v 2016 $debug $log $dns
echo "test twmap..."
./twmap.sh $debug -r $range -G -t test1 -v 3 $debug $log $dns

