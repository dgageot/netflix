#!/bin/bash

gcutil \
	--project="code-story-blog" \
	addinstance \
	--image="projects/coreos-cloud/global/images/coreos-stable-367-1-0-v20140724" \
	--zone="europe-west1-b" \
	--machine_type="g1-small" \
	--tags="http-server" \
	--auto_delete_boot_disk \
	--metadata_from_file="user-data:cloud-config.yaml" \
	core1