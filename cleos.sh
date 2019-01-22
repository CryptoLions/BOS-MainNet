#!/bin/bash
################################################################################
#
# Script Created by http://CryptoLions.io
# For BOS chain
#
# https://github.com/CryptoLions/BOS-MainNet
#
################################################################################

CLEOS=/opt/bin/bin/cleos

$CLEOS -u http://127.0.0.1:8888 --wallet-url http://127.0.0.1:5553 "$@"
