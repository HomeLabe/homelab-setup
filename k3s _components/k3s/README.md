# Installation de k3s sur Proxmox VMs

Ce dépôt contient des scripts pour installer k3s sur des VMs Proxmox.

## Prérequis

- VMs configurées sur Proxmox
- Accès SSH aux VMs

## Variables

Assurez-vous de définir les variables suivantes dans votre environnement :

- `K3S_MASTER_IP`: Adresse IP du control plane k3s
- `K3S_TOKEN`: Token d'authentification pour les nœuds k3s

## Usage

1. Clonez le dépôt.
2. Exécutez le script d'installation sur le control plane k3s.
3. Exécutez le script d'installation sur les nœuds worker k3s.
4. Exportez le fichier kubeconfig sur votre machine locale.

### Installation du control plane k3s

./install_k3s_master.sh

### Installation du worker k3s

./install_k3s_worker.sh

### Exportez le fichier kubeconfig sur votre machine locale.

scp <ciuser>@<K3S_MASTER_IP>:/etc/rancher/k3s/k3s.yaml ~/.kube/config
chmod 600 ~/.kube/config

Remplacez <ciuser> par votre utilisateur Cloudinit et <K3S_MASTER_IP> par l'adresse IP de votre control plane k3s.
