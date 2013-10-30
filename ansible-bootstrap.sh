#!/bin/sh

sudo apt-get update
sudo apt-get upgrade -y

sudo add-apt-repository -y ppa:rquillo/ansible
sudo apt-get update
sudo apt-get install -y ansible

