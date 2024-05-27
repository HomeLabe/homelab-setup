#!/bin/bash

# Script d'installation du maître k3s

# Vérifiez si le script est exécuté en tant que root
if [ "$EUID" -ne 0 ]; then
  echo "Veuillez exécuter ce script en tant que root."
  exit
fi

# Installation de k3s
curl -sfL https://get.k3s.io | sh -s - --disable traefik --write-kubeconfig-mode 644 --node-name k3s-master-01

# Affichage du fichier de configuration k3s
cat /etc/rancher/k3s/k3s.yaml

echo "Installation du maître k3s terminée."
