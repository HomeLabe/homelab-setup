#!/bin/bash

# Script d'installation de MetalLB

# Vérifiez si Helm est installé
if ! command -v helm &> /dev/null
then
    echo "Helm n'est pas installé. Veuillez l'installer pour continuer."
    exit
fi

# Ajout du dépôt Helm MetalLB
helm repo add metallb https://metallb.github.io/metallb

# Mise à jour du dépôt Helm
helm repo update

# Création de l'espace de noms pour MetalLB
kubectl create namespace metallb

# Installation de MetalLB via Helm
helm install metallb metallb/metallb --namespace metallb

# Vérification des pods MetalLB
kubectl -n metallb get pod

echo "Installation de MetalLB terminée."
