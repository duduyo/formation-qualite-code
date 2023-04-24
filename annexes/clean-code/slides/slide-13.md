---
separator: §§
verticalSeparator: §§§
---

## Clean architecture

![](images/CleanArchitecture.jpg)
Source : http://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html

§§

## Principes

- Divise le système en couches avec des rôles bien définis et distincts
- Restreint les relations entre le code métier et les différentes couches

Rendre le logiciel :
- Indépendant d'un Framework
- Testable
- Indépendant de l'interface graphique
- Indépendant du système de gestion des données (Base de données etc.)
- Indépendant d'un logiciel externe

§§

## Le but

- Isoler et protéger le code métier
- Pas de dispersion dans plusieurs couches
- Le code métier n'évolue pas à la même vitesse que les composants (bdd, infra, frameworks..)
- Facilite les tests
- Découpage par responsabilité qui facilite les déploiements
