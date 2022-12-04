#!/bin/sh

echo "creating default vm instance-1 in GCP using gcloud..."

# Create an image
# Instace name = vt-assignment
# Nested virtualization is enabled

gcloud compute instances create vt-assignment --project=cmpe-283 --zone=us-west4-b --machine-type=n2-standard-4 --network-interface=network-tier=PREMIUM,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=211258441763-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/cloud-platform --tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=vt-assignment,image=projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20221201,mode=rw,size=150,type=projects/boxwood-coil-367404/zones/us-west4-b/diskTypes/pd-ssd --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any --enable-nested-virtualization --min-cpu-platform="Intel Cascade Lake"
