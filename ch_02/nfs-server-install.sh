#/bin/bash

apt update && apt -y upgrade

apt install -y nfs-server

mkdir /data

cat << EOF >> /etc/exports
/data *(rw,no_subtree_check,no_root_squash,insecure)
EOF

# /data *(rw,sync,no_root_squash,insecure)
# /data *(rw,no_subtree_check,no_root_squash,insecure)

# This was the original
# /data 172.30.2.2(rw,no_subtree_check,no_root_squash) 

systemctl enable --now nfs-server

exportfs -ar

# exportfs -rav



# to mount this from another server (specific to killercoda)

# sudo apt update && sudo apt install nfs-common

# sudo mkdir /var/data

# sudo mount -t nfs -o nfsvers=3 172.30.2.2:/data /var/data

