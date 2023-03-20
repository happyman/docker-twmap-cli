#!/bin/bash
# test build
log=""
#log="-l abc --logurl_prefix ws://homevm:9002/twmap_"
debug="-d"
./twmap.sh -d -r 236:2514:1:1:TWD67 -G -t test1 -v 2016 $debug $log
./twmap.sh -d -r 236:2514:1:1:TWD67 -G -t test1 -v 3 $debug $log
./twmap.sh -d -r 236:2514:1:1:TWD67 -G -t test1 -v 1 $debug $log

ls -la 236*
