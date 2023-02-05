#!/bin/bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

git clone https://github.com/Nordix/Meridio.git

cd Meridio

make -s -C docs/demo/scripts/kind/ KUBERNETES_VERSION="v1.26" KUBERNETES_IP_FAMILY="v1.26" NSM_VERSION="v1.7.1" 

cd ..