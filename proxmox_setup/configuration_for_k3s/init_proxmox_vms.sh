#!/bin/bash

# Initialisation du script pour configurer les VMs sur Proxmox avec Terraform

# Vérification de la présence de Terraform
if ! command -v terraform &> /dev/null
then
    echo "Terraform n'est pas installé. Veuillez l'installer pour continuer."
    exit
fi

# Initialisation et application de la configuration Terraform
terraform init
terraform apply -auto-approve

echo "Les VMs ont été configurées avec succès sur Proxmox."
