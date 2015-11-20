#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 python3 python3-pip python3-dev python3-flask python3-requests
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi