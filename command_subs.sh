#!/bin/bash

echo "Welcome $USER on $HOSTNAME."
echo "###############################################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD= `uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep 'dev/nvme0n1p1' | awk '{print $4}')
echo "################################################"
echo "Avaibale free Ram is $FREERAM MB"
echo "################################################"
echo "Current Load Average $LOAD"
echo "################################################"
echo "Free ROOT partition size is  $ROOTFREE"