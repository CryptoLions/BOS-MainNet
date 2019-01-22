#!/bin/bash
################################################################################
#
# Script Created by http://CryptoLions.io
# For BOS chain
#
# https://github.com/CryptoLions/BOS-MainNet
#
################################################################################

NODEOS=/opt/bin/bin/nodeos
DATADIR=/opt/BOSmainnet

$DATADIR/stop.sh

$NODEOS --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$NODEOS --delete-all-blocks --genesis-json genesis.json --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
