#!/bin/bash

gcloud compute instances get-serial-port-output netflix \
	--project="code-story-blog" \
	--zone="us-central1-a"