#!/bin/bash
if ! systemctl is-active $1 ; then
    systemctl start $1
else exit 0;
fi
