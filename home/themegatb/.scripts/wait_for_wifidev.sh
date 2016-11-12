#!/bin/sh
until ip a | grep -q "wlp1s0"; do
    sleep 0.1
done
/usr/bin/openrc full >/dev/null
