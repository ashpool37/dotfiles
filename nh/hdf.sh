#!/bin/bash

DGLUSER=${1:-Ashpool}
DGLPASS=`pass game/nh/${DGLUSER} | sed 1q`
export DGLAUTH="${DGLUSER}:${DGLPASS}"
trap "" SIGHUP
# filterm ascii-ascii cp437-utf8 ssh hdf
ssh hdf
