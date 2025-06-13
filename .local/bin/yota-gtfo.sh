#!/usr/bin/env sh

iptables -t mangle -I POSTROUTING -o wlan0 -j TTL --ttl-set 65
