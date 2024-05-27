#!/bin/bash

# Script d'installation de Cert-Manager

# Vérifiez si Helm est installé
if ! command -v helm &> /dev/null
then
    echo "Helm n'est pas installé. Veuillez l'installer pour continuer."
    exit
fi

# Ajout du dépôt Helm pour Cert-Manager
helm repo add jetstack https://charts.jetstack.io

# Mise à jour du dépôt Helm
helm repo update

# Création de l'espace de noms pour Cert-Manager
kubectl create namespace cert-manager

# Installation de Cert-Manager via Helm
helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v1.6.1 --set installCRDs=true

# Vérification des pods Cert-Manager
kubectl -n cert-manager get pods

echo "Installation de Cert-Manager terminée."
