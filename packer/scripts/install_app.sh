#!/bin/bash

echo "install app-----------------------"
sudo apt install -y git &&
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install


# cat << EOF > /etc/systemd/system/reddit.service
# [Unit]
# Description=reddit app
# After=network.target

# [Service]
# Type=simple
# User=ubuntu
# WorkingDirectory=/home/ubuntu/reddit
# ExecStart=/usr/local/bin/puma
# Restart=always

# [Install]
# WantedBy=multi-user.target
# EOF
