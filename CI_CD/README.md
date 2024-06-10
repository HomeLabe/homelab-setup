# CI/CD Pipelines

Ce dépôt contient des configurations pour les pipelines CI/CD utilisant GitLab CI. Ces pipelines sont utilisés pour construire et déployer une application Docker.

## Structure des Pipelines

### Stages

Les pipelines sont divisés en plusieurs stages :

1. **build** : Ce stage contient des jobs pour construire l'image Docker et mettre à jour les manifests.
2. **trigger_deployment** : Ce stage déclenche la pipeline de déploiement.

### Jobs

#### update_image

Ce job met à jour l'image Docker dans le fichier `kustomization.yaml` pour l'environnement de production.

Principales étapes du job :
- Téléchargement et configuration de `yq`.
- Mise à jour de l'image Docker dans le fichier de configuration.
- Configuration de Git et commit des modifications.
- Push des modifications vers la branche principale.

#### build_job

Ce job construit l'image Docker et la pousse vers le registre Docker.

Principales étapes du job :
- Lecture de la version depuis un fichier `VERSION`.
- Construction de l'image Docker.
- Poussée de l'image Docker vers le registre.

#### trigger_deployment

Ce job déclenche la pipeline de déploiement en passant la version comme variable d'environnement.

Principales étapes du job :
- Installation de `curl`.
- Lecture de la version depuis un fichier `VERSION`.
- Déclenchement de la pipeline de déploiement via une requête HTTP.

## Variables

Assurez-vous de définir les variables suivantes dans vos paramètres de configuration GitLab CI/CD :

- `DOCKER_USERNAME` : Nom d'utilisateur Docker.
- `DOCKER_PASSWORD` : Mot de passe Docker.
- `CI_JOB_TOKEN` : Jeton GitLab CI pour l'authentification.
- `VERSION` : Version de l'application Docker.

## Notes de Sécurité

- **Ne jamais exposer vos tokens et identifiants sensibles** dans les dépôts publics. Utilisez les fonctionnalités de gestion des secrets de GitLab CI/CD pour sécuriser ces informations.
- **Anonymisation des informations** : Les emails, URLs et tokens sensibles dans les fichiers de configuration ont été anonymisés dans cet exemple. Assurez-vous de les remplacer par vos informations réelles tout en les protégeant adéquatement.

## Contribution

Les contributions sont les bienvenues ! Veuillez soumettre des pull requests ou ouvrir des issues pour toute suggestion ou problème.

