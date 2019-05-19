#!/bin/bash

PACKER_VERSION="1.4.1"

cd /opt && wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip
unzip packer_${PACKER_VERSION}_linux_amd64.zip
chmod +x packer
sudo mv packer /usr/sbin/
