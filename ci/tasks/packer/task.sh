#!/bin/sh
set -e 
cd workshop-packer/vms/packer/
packer build -force windows2019.json