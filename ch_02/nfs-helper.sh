#!/bin/bash

sudo apt update && sudo apt install nfs-common

# to mount this from another server (specific to killercoda)

sudo mkdir /var/data

sudo mount -t nfs -o nfsvers=3 172.30.2.2:/data /var/data