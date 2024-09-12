#!/bin/bash

PING_KEY=fixme-enter-ping-key

# Construct a ping URL and append "?create=1" at the end:
URL=https://hc-ping.com/$PING_KEY

# Send a ping:
curl -m 10 --retry 5 $URL