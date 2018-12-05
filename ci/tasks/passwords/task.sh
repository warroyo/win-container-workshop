#!/bin/sh
set -e 
cd workshop/vms/terraform

./create-passwords $COUNT

cp -r * ../../../terraform-files