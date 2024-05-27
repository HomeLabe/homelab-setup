#!/bin/bash

# Script d'installation de NGINX Ingress Controller

# Vérifiez si Helm est installé
if ! command -v helm &> /dev/null
then
    echo "Helm n'est pas installé. Veuillez l'installer pour continuer."
    exit
fi

# Ajout du dépôt Helm pour NGINX Ingress Controller
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

# Mise à jour du dépôt Helm
helm repo update

# Création de l'espace de noms pour NGINX Ingress Controller
kubectl create namespace ingress-nginx

# Installation de NGINX Ingress Controller via Helm
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx

# Vérification des pods NGINX Ingress Controller
kubectl -n ingress-nginx get pods

echo "Installation de NGINX Ingress Controller terminée."
