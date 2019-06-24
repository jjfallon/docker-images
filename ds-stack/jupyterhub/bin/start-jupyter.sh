#!/bin/bash
ln -sf /opt/etc/passwd /etc/passwd
ln -sf /opt/etc/shadow /etc/shadow
ln -sf /opt/etc/group /etc/group
ln -sf /opt/etc/gshadow /etc/gshadow

echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

fname=$(grep "^$USER:" /etc/passwd | awk -F ":" '{print $6}')
mkdir -p $fname
chown -R $USER:$USER $fname

jupyterhub --generate-config
echo "c.Spawner.default_url = '/lab'" >> jupyterhub_config.py

jupyterhub --port 8000
