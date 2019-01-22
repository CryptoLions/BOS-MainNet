#!/bin/bash
################################################################################
#
# Script Created by http://CryptoLions.io
# For BOS chain
#
# https://github.com/CryptoLions/BOS-MainNet
#
################################################################################

DIR=/opt/BOSmainnet

	    if [ -f $DIR"/nodeos.pid" ]; then
	        pid=$(cat $DIR"/nodeos.pid")
	        echo $pid
	        kill $pid

	        echo -ne "Stoping Nodeos"

	        while true; do
	            [ ! -d "/proc/$pid/fd" ] && break
	            echo -ne "."
	            sleep 1
	        done
	        rm -r $DIR"/nodeos.pid"

	        DATE=$(date -d "now" +%Y_%m_%d-%H_%M)
	        if [ ! -d $DIR/logs ]; then
	            mkdir $DIR/logs
	        fi
	        tar -pcvzf $DIR/logs/stderr-$DATE.txt.tar.gz stderr.txt stdout.txt


	        echo -ne "\rNodeos stopped. \n"

	    fi
	    
