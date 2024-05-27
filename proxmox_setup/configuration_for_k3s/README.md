# Proxmox VM QEMU Cloudinit Configuration

Ce dépôt contient les configurations Terraform pour créer des VMs sur Proxmox avec Cloudinit. Les configurations incluent des VMs pour `k3s-master`, `k3s-worker`.

## Prérequis

- Proxmox VE
- Terraform installé

## Variables

Assurez-vous de définir les variables suivantes dans votre fichier `variables.tf` ou dans votre environnement :

- `node_name`: Nom du nœud Proxmox
- `vm_template`: Nom du template VM à cloner
- `ssh_keys`: Clé SSH publique pour l'accès aux VMs
- `ciuser`: Utilisateur Cloudinit

## Provider

Assurez-vous de définir votre provider suivantes dans votre fichier `provider.tf`:

  `pm_api_url`: URL de votre serveur Proxmox
  `pm_api_token_id`: Valeur de l'ID de votre Token Proxmox sous la forme de `username>@pam!<tokenId>`
  `pm_api_token_secret`: Valeur du secret de votre Token Proxmox

## Usage

1. Clonez le dépôt.
2. Configurez vos variables dans un fichier `variables.tf`.
3. Exécutez le script d'initialisation. 

### Lancement du script d'installation

./init_proxmox_vms.sh
