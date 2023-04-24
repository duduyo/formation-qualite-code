---
separator: §§
verticalSeparator: §§§
---

<!-- .slide: class="fonctions" -->
## Les fonctions 1/5

- Faire court (~10 lignes)

- Faire une seule chose

- Choisir des noms descriptifs

```java
public static String renderPageWithSetupsAndTeardowns(PageData pageData,
                                                      boolean isSuite)
{
    if (isTestPage(pageData)) {
        includeSetupAndTeardownPages(pageData, isSuite);
    }
    return pageData.getHtml();
}
```

Note:
- UNE FONCTION DOIT FAIRE UNE SEULE CHOSE. ELLE DOIT LA FAIRE BIEN ET NE FAIRE QU’ELLE.
- Vous savez que vous travaillez avec du code propre lorsque chaque fonction que vous lisez correspond presque parfaitement à ce que vous attendiez


§§
<!-- .slide: class="fonctions" -->
## Les fonctions 2/5

- 1 argument

```java
    // BAD
    void transform(StringBuffer out);
    // GOOD
    StringBuffer transform(StringBuffer in);

    boolean fileExists("MyFile");   // question à propos de cet argument
    InputStream fileOpen("MyFile"); // argument manipulé pour le transformer
```

- 2 arguments

```java
    Point p = new Point(0,0);

    assertEquals(expected, actual); // "oui mais"... 
                                    // il faut connaître l'ordre :(
```

Note:
Idéalement, une fonction ne devrait PAS avoir d'argument.
Les fonctions à 1 ou 2 arguments sont possibles.
Au delà, il faudra exiger une très bonne raison.


§§
<!-- .slide: class="fonctions" -->
## Les fonctions 3/5

- argument objets

```java
    // BAD
    Circle makeCircle(double x, double y, double radius);
    // GOOD
    Circle makeCircle(Point center, double radius);
```

- argument liste

```java
    // tous les éléments de la liste ont le même format
    String.format("%s worked %.2f hours.", name, hours);
    // En fait, c'est une fonction diadique !
    public String format(String format, Object... args) { ... }
```

- argument flag

```java
    // BAD
    public void render(boolean isSuite);  // render(true) ?
    // GOOD
    public void renderForSuite();
    public void renderForSingleTest();
```


§§
<!-- .slide: class="fonctions" -->
## Les fonctions 4/5

- Éviter les effets secondaires

```java
    public boolean checkPassword(User user, String password) {
        String codedPhrase = user.getPhraseEncodedByPassword();
        String phrase = cryptographer.decrypt(codedPhrase, password);
        if ("Valid".equals(phrase)) {
            Session.initialize();  // NO NO NO :(
            return true;
        }
        return false;
    }
```

- Séparer Query / Command

```java
    // BAD
    public boolean set(String attribute, String value);
    if (set("nomUtilisateur", "OncleBob")) // ... ??

    // GOOD
    if (attributeExists("nomUtilisateur")) {
        setAttribute("nomUtilisateur", "OncleBob");
        ...
    }
```

§§
<!-- .slide: class="fonctions" -->
## Les fonctions 5/5

- Préférer les exceptions au retour de codes d’erreur

```java
    // BAD
    if (deletePage(page) == E_OK) {
        if (registry.deleteReference(page.name) == E_OK) {
            if (configKeys.deleteKey(page.name.makeKey()) == E_OK){
                logger.log("page deleted");
            } [...]
        }
    }

    // GOOD
    try {
        deletePage(page);
        registry.deleteReference(page.name);
        configKeys.deleteKey(page.name.makeKey());
    }
    catch (Exception e) {
        logger.log(e.getMessage());
    }
```

§§

## Les classes

- petites : _**S**ingle **R**esponsibility **P**rinciple_

- organisées : _**O**pen-**C**losed **P**rinciple_

- nombre réduit de **variables**

- **cohésion forte**


```java
    public class Version {
        private int major;
        [...]
        public int getMajorVersionNumber()
        public int getMinorVersionNumber()
        public int getBuildNumber()
    }
```


Note:
- pour les fonctions, on mesure : le nb de lignes
- pour les classes, on mesure   : les responsabilités
- SRP: stipule qu’il ne doit exister qu’une et une seule raison de modifier une classe ou un module
- point important : Nous voulons que nos systèmes soient constitués de nombreuses petites classes, non de quelques grandes classes. Chaque petite classe encapsule une seule responsabilité, n’a qu’une seule raison d’être modifiée et collabore avec d’autres classes pour parvenir au fonctionnement souhaité.
- cohésion élevée : cela signifie que les méthodes et les variables de la classe sont interdépendantes et forment un tout logique. Les méthodes devraient modifier plusieurs des variables de la classe. A l'inverse une variable qui n'est modifiée que par une fonction est un signe de cohésion faible.