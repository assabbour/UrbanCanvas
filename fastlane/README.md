# Fastlane

Ce dossier contient la configuration Fastlane du projet UrbanCanvas.

## Objectif

Fastlane permet d'automatiser plusieurs tâches du projet iOS :

- lancement des tests unitaires ;
- génération d'un build de l'application ;
- préparation d'un futur déploiement sur TestFlight.

## Commandes disponibles

Lancer les tests :

```bash
fastlane tests
```

Préparer un build :

```bash
fastlane build
```

## Remarque

Le déploiement TestFlight n'est pas encore configuré.
Il nécessitera un compte Apple Developer ainsi que les certificats de signature.