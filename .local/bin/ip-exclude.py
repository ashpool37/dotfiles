#!/usr/bin/env python

import sys
from ipaddress import IPv4Network

print(', '.join(map(str, IPv4Network(sys.argv[1]).address_exclude(IPv4Network(sys.argv[2])))))
