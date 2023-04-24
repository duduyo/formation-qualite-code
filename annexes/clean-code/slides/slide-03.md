---
separator: §§
verticalSeparator: §§§
---

# Kata Mars Rover

![](images/1920px-NASA_Mars_Rover.jpg) <!-- .element style="width:600px" -->

§§

## Mars rover : mise en situation

* Votre PO vous demande de développer les fonctionnalités du kata mars rover
* Il vous fournit pour cela un backlog priorisé
* Vous développez les features par ordre de priorité, et sur la base de sprints de 1h30/2h
* Un sprint peut contenir plusieurs items du backlog. Exemple : sprint 1 = item1 + item2
* Le PO est aussi très attaché à la qualité du code : il vous demande une attention toute particulière sur ce sujet
* A la fin de chaque sprint vous devez faire une démonstration de votre application, et une revue de code collective

§§

## Mars rover : mise en situation

Il n'est pas important de finir le kata, ou d'implémenter plus de fonctions que les autres binômes

Par contre, concentrez-vous sur :

* la qualité du code produit
* la qualité de vos abstractions
* votre méthode de développement (TDD, KISS, etc)

N'anticipez pas les stories du backlog !

§§

## Les revues de code collectives

* bienveillantes
* il n'y a pas une bonne solution
* se concentrer sur le design et la lisibilité du code
* timing : quelques minutes par binôme

§§

## Le backlog mars rover #1

Contexte

* Il s'agit de simuler les déplacements d'un robot (le rover) sur mars
* Le positionnement inital du Rover est donné en entrée : Position (x, y) et direction (N, S, E, W)
* Le rover recoit une liste de commandes sous la forme d'un tableau de caractères (ex : 'fflfrrbb')
* Il doit se déplacer en conséquence sur la planète
* La planète est représentée par une grille aux dimensions finies

§§

## Le backlog mars rover #2

1) Déplacer le Rover en avant et arrière avec les commandes F et B.<br>
Afficher la liste des commandes et la position finale du rover

2) Faire tourner le Rover vers sa droite ou sa gauche avec les commandes L et R

3) Afficher le chemin suivi par le Rover durant son déplacement

§§

## Le backlog mars rover #3

4) Mettre en place la détection d'obstacles avant chaque mouvement. En cas d'obstacle, le rover se déplace jusqu'à la dernière position possible, annule le reste des mouvements et rend compte de l'obstacle<!-- .element: style="font-size: smaller;"-->

5) Proposer un rendu alternatif pour l'affichage de Mars, du Rover et des commandes. Le choix du type de rendu utilisé doit pouvoir se faire par configuration (sans impact sur le code métier)<!-- .element: style="font-size: smaller;"-->

6) Mettre en place le déplacement cyclique d'un bord à l'autre de la grille (comme si on faisait le tour de la planète)<!-- .element: style="font-size: smaller;"-->

7) La liste des commandes est fournie dans un fichier<!-- .element: style="font-size: smaller;"-->

§§

## Le backlog mars rover #4

8) Ajouter une commande 'u' qui permet de faire faire un demi-tour au rover (U-Turn)

9) Certaines zones de Mars sont très accidentées
* implémenter une commande 'n' (Nasa) : à chaque  commande 'n' le rover interroge l'api de la NASA pour récupérer le mouvement qu'il doit effectuer
* l'api de la nasa est impémentée dans [ce projet](https://gitlab.forge.orange-labs.fr/clean-code-training/nasa-control-center/tree/master)
* utiliser directement dans votre code la classe NasaControlCenterStub.java





