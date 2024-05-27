# Déploiement Kubernetes avec k3s, Proxmox, NGINX Ingress Controller, ArgoCD et Cert-Manager

Bienvenue sur ce dépôt GitHub dédié au déploiement d'un cluster Kubernetes léger utilisant k3s sur Proxmox. Ce projet inclut également la configuration et l'installation de plusieurs outils essentiels pour la gestion des applications dans Kubernetes :

- **Proxmox** : Scripts pour créer des VMs sur Proxmox avec Cloudinit pour héberger le cluster k3s.
- **k3s** : Une distribution Kubernetes légère et facile à installer.
- **NGINX Ingress Controller** : Gère les entrées HTTP et HTTPS vers les services Kubernetes.
- **ArgoCD** : Une solution GitOps pour la gestion des déploiements Kubernetes à partir de référentiels Git.
- **Cert-Manager** : Automatise l'acquisition et le renouvellement des certificats TLS pour les services Kubernetes.

## Contenu du Dépôt

- **Proxmox** : Scripts et configurations pour créer des VMs et déployer un cluster k3s sur Proxmox.
- **k3s** : Scripts et configurations pour installer et configurer k3s.
- **NGINX Ingress Controller** : Scripts et fichiers pour installer et configurer NGINX Ingress Controller.
- **ArgoCD** : Scripts et fichiers de configuration pour installer ArgoCD.
- **Cert-Manager** : Scripts et configurations pour installer Cert-Manager et gérer les certificats.

## Fonctionnalités

- **Installation Automatisée** : Scripts pour automatiser l'installation et la configuration de chaque composant.
- **Configurations Personnalisables** : Fichiers de configuration faciles à adapter selon vos besoins spécifiques.
- **Support GitOps** : Intégration avec ArgoCD pour des déploiements continus et automatisés à partir de vos référentiels Git.
- **Gestion TLS** : Utilisation de Cert-Manager pour automatiser la gestion des certificats SSL.

## Prérequis

- Un cluster k3s fonctionnel.
- Proxmox VE installé et configuré.
- Helm installé sur votre machine.
- Accès à `kubectl` pour interagir avec votre cluster Kubernetes.

## Comment Commencer

1. **Cloner le Dépôt** : Récupérez les fichiers en clonant ce dépôt.
2. **Configurer les Variables** : Adaptez les fichiers de configuration avec vos propres paramètres (tokens API, noms de domaine, emails, etc.).
3. **Exécuter les Scripts** : Utilisez les scripts fournis pour installer et configurer chaque composant.

## Sécurité

Assurez-vous de sécuriser les informations sensibles, telles que les tokens API et les secrets. Ne partagez pas vos clés privées ou tokens en ligne.

## Contributions

Les contributions sont les bienvenues ! Si vous avez des améliorations, des corrections ou des suggestions, n'hésitez pas à ouvrir une issue ou à soumettre une pull request.


---

**Auteur** : OMALK Mehdi
**Contact** : Mehdi@omalk.com
