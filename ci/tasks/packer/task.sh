#!/bin/sh
set -e 
cd workshop/vms/packer/
packer build -force windows2019.json