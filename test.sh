#!/bin/bash
# test build
log=""
#log="-l abc --logurl_prefix ws://homevm:9002/twmap_"
debug="-d"
range="244:2597:2:2:TWD67"
echo "test rudymap..."
./twmap.sh $debug -r $range -G -t test1 -v 2016 $debug $log
echo "test twmap..."
./twmap.sh $debug -r $range -G -t test1 -v 3 $debug $log
#echo "test v1..."
#./twmap.sh $debug -r $range -G -t test1 -v 1 $debug $log

ls -la 244*
echo rm 244*
