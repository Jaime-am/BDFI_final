#!/bin/bash

sudo apt-get update
sudo apt-get install -y git
git clone https://github.com/Jaime-am/BDFI_final /tmp/BDFI_final
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo chmod 777 /tmp/BDFI_final/docker-compose/cassandra/cassandra-init.sh /tmp/BDFI_final/docker-compose/mongo/mongo-init.sh /tmp/BDFI_final/docker-compose/
# cd /tmp/BDFI_final/docker-compose && sudo /usr/libexec/docker/cli-plugins/docker-compose up