---
separator: §§
verticalSeparator: §§§
---

## Stepdown rule

le code de la classe doit être :
- lisible de "haut en bas"
- en descendant d'un niveau d'abstraction par fonction
- avec un niveau d'abstraction homogène<br>
  au sein de chaque fonction


§§
<!-- .slide: class="citation" -->
## Stepdown rule

**_POUR_** préparer un petit déjeuner,
nous devons **ajouter des oeufs**,
puis les **cuisiner** avant de les **servir**

**_POUR_** **ajouter des oeufs**,
nous devons les **prendre dans le frigo**,
puis les **mettre dans la poële**

**_POUR_** **cuisiner** les oeufs,
nous devons les **mélanger**
puis les **assaisonner**

**_POUR_** **servir** les oeufs...


Note:

- Nous voulons pouvoir lire le programme comme s’il s’agissait d’un ensemble de paragraphes POUR, chacun décrivant le niveau d’abstraction actuel et faisant référence à des paragraphes POUR de niveau inférieur.
- Cela implique que l'ordre des fonctions n'est plus aléatoire. Une fonction d'appelant doit toujours résider au-dessus de la fonction de l'appelé.


§§

## Stepdown rule - ordre :(

```java
private void serve() {
    wife.give(fryingPan.getContents(20, PERCENT));
    self.give(fryingPan.getContents(80, PERCENT));  // ouuuh !
}

private void addEggs() {
    fridge
        .getEggs()
        .forEach(egg -> fryingPan.add(egg.open());
}

private void cook() {
    fryingPan.mixContents();
    fryingPan.add(salt.getABit());
    fryingPan.mixContents();
}

public void makeBreakfast() {
   addEggs();
   cook();
   serve();
}

```

§§

## Stepdown rule - niveaux abstractions :(

```java
public void makeBreakfast() {
   addEggs();
   cook();
   wife.give(fryingPan.getContents(50, PERCENT));
   self.give(fryingPan.getContents(50, PERCENT)); // mieux !
}

private void addEggs() {
    fridge
        .getEggs()
        .forEach(egg -> fryingPan.add(egg.open());
}

private void cook() {
    fryingPan.mixContents();
    fryingPan.add(salt.getABit());
    fryingPan.mixContents();
}

```

§§

## Stepdown rule :)

```java
public void makeBreakfast() {
   addEggs();
   cook();
   serve();
}

private void addEggs() {
    fridge
        .getEggs()
        .forEach(egg -> fryingPan.add(egg.open());
}

private void cook() {
    fryingPan.mixContents();
    fryingPan.add(salt.getABit());
    fryingPan.mixContents();
}

private void serve() {
    wife.give(fryingPan.getContents(80, PERCENT));
    self.give(fryingPan.getContents(20, PERCENT));  // gentleman ;)
}
```
