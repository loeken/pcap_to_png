#!/bin/bash
#
# input pcap file, get png returned
#
argus -r "$1" -w - | ra -r - -nn -s daddr dport ttl -c, | perl afterglow.pl -c color.properties | neato -Tpng -o test.png
