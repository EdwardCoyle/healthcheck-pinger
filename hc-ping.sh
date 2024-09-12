#!/bin/bash

PING_KEY=0e9ff055-6aae-45ef-8324-6220de84adce

# Construct a ping URL and append "?create=1" at the end:
URL=https://hc-ping.com/$PING_KEY

# Send a ping:
curl -m 10 --retry 5 $URL