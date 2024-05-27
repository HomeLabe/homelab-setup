# Installation d'ArgoCD sur k3s

Ce dépôt contient des scripts et des instructions pour installer et configurer ArgoCD sur un cluster k3s.

## Prérequis

- Cluster k3s fonctionnel
- Helm installé
- Accès à `kubectl`

## Usage

1. Clonez le dépôt.
2. Exécutez les commandes pour installer ArgoCD via Helm.
3. Créez et appliquez la configuration d'ArgoCD.

### Appliquez la configuration ArgoCD

kubectl apply -f argocd-config.yaml

## Pour accéder à l'interface ArgoCD, obtenez le mot de passe initial pour l'utilisateur admin :

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d


