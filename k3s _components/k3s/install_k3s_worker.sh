#!/bin/bash

# Script d'installation des nœuds travailleurs k3s

# Vérifiez si le script est exécuté en tant que root
if [ "$EUID" -ne 0 ]; then
  echo "Veuillez exécuter ce script en tant que root."
  exit
fi

# Vérifiez si les variables nécessaires sont définies
if [ -z "$K3S_MASTER_IP" ] || [ -z "$K3S_TOKEN" ]; then
  echo "Veuillez définir les variables K3S_MASTER_IP et K3S_TOKEN."
  exit
fi

# Installation de k3s worker
sudo curl -sfL https://get.k3s.io | K3S_NODE_NAME=k3s-worker-01 K3S_URL=https://$K3S_MASTER_IP:6443 K3S_TOKEN=$K3S_TOKEN sh -

echo "Installation du nœud travailleur k3s terminée."
