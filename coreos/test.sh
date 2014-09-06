#!/bin/bash

echo
echo 'My IP is'
curl http://curlmyip.com/

echo
echo 'The proxy is'
IP=$(gcloud compute instances describe netflix --project "code-story-blog" --zone "us-central1-a" --format json | jq -r .networkInterfaces[0].accessConfigs[0].natIP)
echo $IP

echo
echo 'My IP through the proxy is'
curl --proxy "http://didier:thatsdockerpower!@${IP}:80" http://curlmyip.com/
