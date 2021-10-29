#!/bin/bash

# * DOCUMENTATION * #
# * https://cloud.google.com/sdk/gcloud/reference/compute/instances/create

INSTANCE_NAME=${1:-instance-1}

gcloud compute instances create $INSTANCE_NAME \
    --zone=us-central1-a \
    --machine-type=e2-medium \
    --maintenance-policy=MIGRATE \
    --image=ubuntu-2004-focal-v20210927 \
    --image-project=ubuntu-os-cloud \
    --boot-disk-size=20GB \
    --boot-disk-type=pd-balanced \
    --boot-disk-device-name=$INSTANCE_NAME \
    --subnet=default \
    --metadata=startup-script='cd /home/ohad24/; curl -sSL https://raw.githubusercontent.com/ohad24/dotfiles/main/dotfiles-install.sh | sh'


    # --no-shielded-secure-boot \
    # --shielded-vtpm \
    # --shielded-integrity-monitoring \
    # --reservation-affinity=any