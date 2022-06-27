#!/bin/bash

sudo apt install -y git puma
git clone -b monolith https://github.com/express42/reddit.git
touch ~/reddit/Gemfile.lock
rm -rf ~/reddit/Gemfile.lock

cd reddit && bundle install
puma &
ps aux | grep puma
