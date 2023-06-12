# ShCare Meet - Documentation

ShCare Meet est une solution de visioconférence basée sur Jitsi Meet, personnalisée pour répondre aux besoins spécifiques de notre organisation. Ce document fournit des instructions pour configurer et déployer ShCare Meet en utilisant Docker et Git.

## Prérequis

- Docker et Docker Compose installés sur votre machine
- Git installé sur votre machine
- Accès au dépôt Git contenant les fichiers de configuration de ShCare Meet

## Maintenance et mises à jour

Pour mettre à jour les fichiers de configuration de ShCare Meet, suivez ces étapes :

0. **Cloner le dépôt Git**

   Clonez le dépôt Git contenant les fichiers de configuration de ShCare Meet sur votre machine locale en utilisant la commande suivante :

   ```shell
   git clone <URL_DU_DEPOT>
   ```

1. Mettez à jour les fichiers de configuration dans le dépôt Git et effectuez un commit des modifications.

2. Sur la machine où ShCare Meet est déployé, mettez à jour le dépôt local en utilisant les commande suivantes :

   ```shell
   sudo su
   cd ~/.jitsi-meet-cfg/
   git pull
   ```

3. Exécutez à nouveau le script .copy.sh pour copier les fichiers de configuration mis à jour dans le conteneur Docker.
   - lister les containeur docker puis copier l'id du containeur web
   ```shell
   docker ps
   ```
   - lancer le containeur web en mode interactif
   ```shell
   docker exec -it $WEB_CONTAINER_ID /bin/bash
   ```
   - exécuter le script .copy.sh pour copier les fichiers modifiés dans le conteneur Docker
   ```shell
   /usr/share/jitsi-meet/transcripts/recover/.copy.sh
   ```

## Ressources supplémentaires

Pour plus d'informations sur Jitsi Meet et sa configuration, consultez la documentation officielle de Jitsi Meet :

- [Documentation Jitsi Meet](https://jitsi.github.io/handbook/docs/intro)
- [Guide d'installation de Jitsi Meet avec Docker](https://jitsi.github.io/handbook/docs/devops-guide/devops-guide-docker)

N'hésitez pas à consulter ces ressources et à collaborer avec l'équipe pour résoudre les problèmes et améliorer ShCare Meet.
