#!/bin/sh
set -e 
cd workshop/vms/terraform

./create-passwords.sh $COUNT

cp -r * ../../../terraform-files