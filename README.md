# Bash Automation Starter Kit  

Ce projet contient des scripts pour automatiser l'administration système de base.

### Scripts inclus :
- **clean_logs.sh** : Scanne un répertoire et supprime les fichiers logs vieux de 30 jours pour optimiser l'espace disque.
- **backup_data.sh** : Compresse et horodate un répertoire de données pour sécuriser les backups.
- **monitor.sh** : Analyse en temps réel l'utilisation des ressources (CPU, RAM, Disque).

### Git Workflow 
Pour ce projet, j'utilise un workflow pour garantir la stabilité du code :
- Utilisation de **branches** (`feature/`) pour les nouvelles fonctionnalités pour éviter de perturber la branche principale
- Messages de commit structurés.
- Validation des changements via des **Pull Requests**.
- **Merge** après validation.

### Docker
Le script de monitoring est conteneurisé pour garantir une exécution identique sur n'importe quel environnement Linux.
- Création d'une image légère avec Alpine Linux.
- Exécution avec un utilisateur non-root pour sécuriser l'hôte.

## Ce que j'ai appris :
- Gestion des permissions Linux (`chmod`).
- Conteneurisation et isolation des environnements.
- Bonnes pratiques de gestion des droits utilisateurs dans Docker.
