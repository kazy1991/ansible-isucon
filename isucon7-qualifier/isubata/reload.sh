#!/bin/bash
set -ex

sudo systemctl restart isubata.ruby.service
sudo cp infra/nginx.conf /etc/nginx/nginx.conf
sudo chown root:root /etc/nginx/nginx.conf
sudo chmod 644 /etc/nginx/nginx.conf
sudo systemctl restart nginx.service
sudo systemctl restart mysql.service