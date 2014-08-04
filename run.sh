#!/bin/bash

htpasswd -cb /etc/squid3/users ${USER} ${PASSWORD}
/usr/sbin/squid3 -N