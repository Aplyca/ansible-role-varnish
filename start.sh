#!/bin/bash

# Start varnish and log
/usr/sbin/varnishd -f /etc/varnish/default.vcl -s malloc,100M -a 0.0.0.0:80
