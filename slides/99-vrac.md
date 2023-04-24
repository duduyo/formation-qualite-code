# La qualité du code

Introduction

---

## Plan

* C'est quoi la qualité du code ?
    * un code qui fait ce qu'on attend de lui
    * un code qui peut facilement être modifié pour faire de nouvelles choses
    * facilement : rapidement, par tout le monde, quelque soit le type d'évolution
* Pourquoi c'est important ?
    * exemple de projets qui se cassent la gueule
    * dette technique, non linéarité, théorie des rendements décroissants
    * l'agilité se concentre sur l'organisation du travail
* Comment on fait ?
    * du code qui fait ce qu'on attend de lui
    * du code qui peut facilement être modifié pour faire de nouvelles choses
    *
* Lien avec l'agilité
* manifeste crafts
* les pratiques : dans l'équipe, dans l'organisation



Que connaissez-vous de la qualité du code ?

// expliquer les 10 points clés de la qualité du code
1. Code fiable
2. Code évolutif
3. Code testé
4. Clean code
5. Clean architecture
6. TDD
7. Refactoring en continu
8. Revues de code
9. Standards d'équipe
10. Utilisation IDE
11. Agilité
12. ...

*  La qualité du code
*

Produire des logiciels de qualité

*  Introduction
*  Un sport d'équipe

* La formation collective
* Les katas
*

Note: speaker notes FTW!
@startuml

usecase agilite as "un code de qualité"
usecase codefiable as "Fait ce qu'on attend de lui"
usecase codeevolutif as "Est évolutif"
usecase codeproduitrapidement as "Est produit rapidement"
usecase codeteste as "Code testé"
usecase cleancode as "Clean code"
usecase cleanarchi as "Clean architecture"
usecase tests as "TDD" <<Pratiques>>
usecase refacto as "Refactoring en continu\nUtilisation IDE" <<Pratiques>>
usecase revues as "Revues de code\nStandards d'équipe" <<Pratiques>>

(agilite) -down-> (codefiable)
(agilite) -down-> (codeevolutif)
(codefiable) -down-> (codeteste)
(codefiable) -down-> (cleancode)
(codeevolutif) -down-> (cleancode)
(codeevolutif) -down-> (cleanarchi)
(codeteste) -down-> (tests)
(codeteste) -down-> (refacto)
(cleancode) -down-> (refacto)
(cleancode) -down-> (revues)
(cleancode) -down-> (tests)
(cleanarchi) -down-> (revues)
(cleanarchi) -down-> (refacto)

@enduml




---

# Test liste

* item 1 <!-- .element: class="fragment" -->
* item 2 <!-- .element: class="fragment" -->
* item 3 <!-- .element: class="fragment" -->


## Définition

Le software craftsmaship c'est un manifeste dont découle:

* Une posture: professionnalisme, pragmatisme, fierté
* Un ensemble de pratiques
    * TDD, Pairing, Code reviews
    * Dojos, Katas, Vis ma vie
    * Club de lecture, Déjeuners techniques, Side projects
    * ...
* Un apprentissage permanent

---

## Pourquoi le "Software Craftsmanship" ?

_"Our job as craftsmen is to lower the cost of quality to a point that it is not a concern anymore"_ (S.Mancuso)

* Intérêt pour les clients : la qualité !
* Intérêt pour l'entreprise : maitrise des coûts, formation
* Intérêt pour les développeurs ?

---

## Intérêts pour les développeurs:

Gagner en satisfaction :

* du travail "bien-fait"
* de la valeur apportée au client
* de l'entraide

Reprendre la main sur son métier :

* fournir une qualité optimale via la maîtrise des pratiques
* apprendre en continue
* partager (donner / recevoir)

Concerne tous les développeurs

---

## Ça change quoi ? (vu des managers)

* Encourager tous les développeurs à participer
* Donner le temps
* Former les plus motivés
* Reconnaître l'activité

Parce qu'il y a un gain pour l'entreprise, et correspond clairement a la stratégie _Software Company_


---

## Ca change quoi ? (vu des développeurs)

* Prendre le temps qu'on vous donne
* Etre capable de sortir de son équipe/projet
* Essayer...

Nous avons dejà des moyens et des lieux (coderoom, villa occitanie) - à nous de les utiliser

---

## En pratique...

Avec le kata [Gilded Rose](https://gitlab.forge.orange-labs.fr/devzone/gilded-rose)

* tests de caractérisation sur un code legacy
* refactoring pour faire émerger les règles métier dans le code
* développement d'une nouvelle fonctionnalité en TDD

---

## Bilan du kata Gilded Rose

Quelques pratiques mises en oeuvre

* TDD, TDD sur du legacy
* Refactoring
* Clean code

---

## Bilan du kata Gilded Rose

Coder a plusieurs, parler du code

* Pour apprendre

* Pour produire un code de meilleur qualité

Katas, coding dojos, mob programming, pair programming, revues de code,...



---

## Ressources

* [Code de ce kata](https://gitlab.forge.orange-labs.fr/devzone/gilded-rose) et [vidéo de David Gageot](https://www.youtube.com/watch?v=q11gydDAMSo)
* [Manifesto for Software Craftsmanship](http://manifesto.softwarecraftsmanship.org/#/fr-fr)
* [livre blanc octo](http://www.octo.com/fr/publications/20-culture-code)
* [Sandro Mancuso, The Software Craftsman](http://blog.xebia.fr/2015/03/17/chapitre-16-du-livre-de-sandro-mancuso-sur-le-software-craftsmanship/)
* [Apprenticeship Patterns](http://chimera.labs.oreilly.com/books/1234000001813/index.html)
* [Plazza: OESW Software Craftsmanship](https://plazza.orange.com/groups/oesw-software-craftsmanship)



---

Software Craftsmanship
1. Définition et objectif
2. Implications
3. Principales pratiques
4. Que peut-on en attendre ?
5. Impact des mauvaises pratiques
6. Retour sur investissement
7. Freins
8. Que faire ?

---

Qu’est-ce que le SOFTWARE CRAFTSMANSHIP ?
§ qualité
§ le bon produit
§ un produit correct
§ efficacité

---

Un état d’esprit
§ professionnalisme
§ amélioration continue
§ partage

---

Manifeste

---

Pourquoi ?
§ code = source de valeur
§ code = source d’innovation
§ préservation du code

---

Implications pour les développeurs
§ L'amour du travail bien fait
§ Fierté
§ Bonnes pratiques
§ Amélioration continue

---

Implications pour les développeurs
§ s’entrainer régulièrement
§ outils
§ s’amuser
§ étendre ses connaissances
aux domaines
connexes


---

Les principales pratiques
§ TDD : Test Driven Development
§ BDD : Behavior Driven
Development
§ CI : Intégration Continue

---

Les principales pratiques
§ Règles de codage et de
nommage
§ Mesurer la qualité du code
§ Automatisation

---

Les principales pratiques
§ Programmation en binôme
§ Revue de code
§ Propriété collective du code

Les principales pratiques
§ Refactoring permanent
§ …

---

Que pouvons nous en attendre ?
§ réduire les coûts de
maintenance
§ Augmenter la productivité
§ qualité des produits
§ durée de vie des logiciels
§ fierté de notre production

---

Que peut-on en attendre ?
§ participer à des conférences
§ attirer de nouveaux talents
§ motivation
§ employabilité

---

Le code de mauvaise qualité coûte plus cher
§ bugs è coûts
§ faible évolutivité

more issues => more fixing time => less time to improve code quality

---

Conséquences de la mauvaise
qualité
§ faibles motivation
§ perte d’expertis

---

Retour sur investissement
§ 1 heure de revue de code
= 33 heures de maintenance
en moins
§ Le TDD peut réduire le coût
global d’un logiciel de 40%
§ plus d’infos:
https://medium.com/javascript-scene/theoutrageous-cost-of-skipping-tdd-codereviews-57887064c412

---

Pourquoi n’est-ce pas
généralisé ?
§ mythe du temps
§ manque d’entraînement
§ timidité
§ manque de motivation

---

Pourquoi n’est-ce pas
généralisé ?
§ culture d’entreprise
§ manque de soutien
§ manque de leadership

---

## Exercice : Tennis

Objectif

* développer en TDD une application qui compte les points du tennis (un jeux uniquement)
* l'application doit retourner le score sur un jeux
* ex : "LOVE-LOVE", "FIFTEEN-LOVE", "DEUCE", "GAME PLAYER A",...

Contrainte : "nommage purement technique"

* un nom choisit [au hasard ici](https://www.online-stopwatch.com/random/treasurebins/full-screen/?r=OUgAvK7uhb)
* pour une classe : 3 mots, une méthode : 2 mots, un param/une variable : 1 mot

--

## Tennis : bilan

* Importance du nommage !
* Le code des tests est aussi important que le code métier
* Documenter un code legacy par les tests
* Encapsuler du code legacy si besoin (par ex via DSL dans les tests)

