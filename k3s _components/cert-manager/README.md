# Installation de Cert-Manager sur k3s

Ce dépôt contient des scripts et des instructions pour installer et configurer Cert-Manager sur un cluster k3s.

## Prérequis

- Cluster k3s fonctionnel
- Helm installé
- Accès à `kubectl`

## Usage

1. Clonez le dépôt.
2. Exécutez les commandes pour installer Cert-Manager via Helm.
3. Créez et appliquez la configuration de Cert-Manager.

### Appliquez la configuration Cert-Manager

kubectl apply -f cert-manager-config.yaml

## Vérification de l'installation

kubectl get certificates --all-namespaces
kubectl describe certificate <CERTIFICATE_NAME> -n <NAMESPACE>
