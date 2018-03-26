#!/bin/bash
supernode -l 54321
edge -d n2n0 -c mynetwork -k encryptme -u 99 -g 99 -m 3C:A0:12:34:56:78 -a 10.0.0.1 -l 45.77.158.23:54321
# client side
#edge -d n2n0 -c mynetwork -k encryptme -u 99 -g 99 -m 3C:A0:12:34:56:79 -a 10.0.0.8 -l 45.77.158.23:54321


# install socks5 server
# apt-get install dante-server