#!/bin/bash

PING_KEY=fixme-your-ping-key-here

# Use system's hostname as check's slug
SLUG=$(hostname)

# Construct a ping URL and append "?create=1" at the end:
URL=https://hc-ping.com/$PING_KEY/$SLUG?create=1

# Send a ping:
curl -m 10 --retry 5 $URL