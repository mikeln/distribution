#!/bin/sh
CA_DIR=/etc/docker/certs.d/10.22.6.208

echo "Adding self signed CA."
sudo mkdir -p $CA_DIR
sudo cp /var/lib/boot2docker/docker-registry-ca.crt $CA_DIR/ca.crt
sudo tee -a /etc/ssl/certs/ca-certificates.crt < /var/lib/boot2docker/docker-registry-ca.crt  > /dev/null 2>&1
sudo cp /var/lib/boot2docker/docker-registry-ca.crt /etc/ssl/certs
