################################################################################
#
# Script Created by http://CryptoLions.io
# For BOS chain
#
# https://github.com/CryptoLions/BOS-MainNet
#
################################################################################

tail -F stderr.txt | awk '$16=="[trxs:"{print $2,$10,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24}'