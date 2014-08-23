#!/bin/bash

IP=$(gcutil listinstances --columns=name,external-ip --format=csv | grep netflix | cut -f2 -d',')

curl http://curlmyip.com/
curl --proxy "http://didier:thatsdockerpower!@${IP}:80" http://curlmyip.com/
