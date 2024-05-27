#!/bin/bash

# Script d'installation d'ArgoCD

# Vérifiez si Helm est installé
if ! command -v helm &> /dev/null
then
    echo "Helm n'est pas installé. Veuillez l'installer pour continuer."
    exit
fi

# Ajout du dépôt Helm pour ArgoCD
helm repo add argo https://argoproj.github.io/argo-helm

# Mise à jour du dépôt Helm
helm repo update

# Création de l'espace de noms pour ArgoCD
kubectl create namespace argocd

# Installation d'ArgoCD via Helm
helm install argocd argo/argo-cd --namespace argocd

# Vérification des pods ArgoCD
kubectl -n argocd get pods

echo "Installation d'ArgoCD terminée."
