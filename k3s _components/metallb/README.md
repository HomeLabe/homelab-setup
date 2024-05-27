# Installation de MetalLB sur k3s

Ce dépôt contient des scripts et des instructions pour installer et configurer MetalLB sur un cluster k3s.

## Prérequis

- Cluster k3s fonctionnel
- Helm installé
- Accès à `kubectl`


## Usage

1. Clonez le dépôt.
2. Exécutez les commandes pour installer MetalLB via Helm.
3. Créez et appliquez la configuration de MetalLB.

### Installation de MetalLB

./install_metallb.sh

## Appliquez la configuration MetalLB

kubectl apply -f metallb-config.yaml

