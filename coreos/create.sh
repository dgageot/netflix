#!/bin/bash

gcloud compute instances create netflix \
	--project "code-story-blog" \
	--zone "us-central1-a" \
	--machine-type "g1-small" \
	--image "coreos" \
	--metadata-from-file "user-data=cloud-config.yaml" \
	--tags "http-server"

gcloud compute ssh netflix \
	--project="code-story-blog" \
	--zone="us-central1-a" \
	--command 'docker events'