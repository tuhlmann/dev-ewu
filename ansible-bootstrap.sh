#!/bin/sh

# check if ansible directory is already cloned and ansible-playbook is in path
# else bootstrap

# Install latest updates
sudo apt-get update
sudo apt-get upgrade -y

Add Ansible repository
sudo add-apt-repository -y ppa:rquillo/ansible
sudo apt-get update

# Install Ansible and git to clone the repository
sudo apt-get install -y ansible git-core git

pushd $HOME

git clone https://github.com/tuhlmann/dev-ewu.git

cd dev-ewu/ansible
ansible-playbook -i hosts/local dev-ewu.yml -K

popd

