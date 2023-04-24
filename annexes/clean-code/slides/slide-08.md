---
separator: §§
verticalSeparator: §§§
---

## Commentaires

- exprimez vos intentions avec du code

> Un code **clair** et **expressif** avec peu de commentaires **est bien supérieur** à un code encombré et complexe avec de nombreux commentaires

![](images/comments.jpg)

§§
<!-- .slide: class="comment" -->
## Commentaires : il y a les bons... 1/2

- commentaires légaux

```java
// Copyright (C) 2003,2004,2005 par Object Mentor, Inc.
// Publié sous les termes de la Licence Publique Générale de GNU
```

- commentaires informatifs

```java
    // Format reconnu kk:mm:ss EEE, MMM dd, yyyy
    Pattern timeMatcher = Pattern.compile(
    "\\d*:\\d*:\\d* \\w*, \\w* \\d*, \\d*");
```

- expliquer les intentions

```java
public int compareTo(Object o) {
    if(o instanceof WikiPagePath) { [...]
        return compressedName.compareTo(compressedArgumentName);
    }
    return 1; // Nous sommes supérieurs car nous sommes du bon type.
}
```

§§
<!-- .slide: class="comment" -->
## Commentaires : il y a les bons... 2/2

- javadoc API publique

- avertir des conséquences

```java
    public static SimpleDateFormat makeStandardHttpDateFormat() {
        // SimpleDateFormat n’étant pas sûr vis-à-vis des threads,
        // nous devons créer chaque instance indépendamment.
        SimpleDateFormat df = new SimpleDateFormat("MM yyyy HH:mm:ss z");
        df.setTimeZone(TimeZone.getTimeZone("GMT"));
        return df;
    }
```
- amplifier

```java
    public List buildListItem() {
        String  = match.group(3).trim();
        // L’appel à trim est très important. Il retire les espaces de tête
        // qui pourraient faire croire que l’élément est une autre liste
        return buildList(listItemContent.substring(match.end()));
    }
```

§§
<!-- .slide: class="comment" -->
## Commentaires : et les mauvais... 1/4

- marmonner

```java
    try {
        loadedProperties.load(new FileInputStream(propertiesPath));
    } catch (IOException ex) {
        // L’absence de fichiers de propriétés signifie que toutes
        // les valeurs par défaut sont chargées.
    }
```

- commentaires redondants

```java
    // L'implémentation de Logger à laquelle ce Container est associé.
    protected Log logger = null;
```

- commentaires trompeurs

```java
    // Return true if valid
    public boolean isValid() {
        return true;
    }
```


§§
<!-- .slide: class="comment" -->
## Commentaires : et les mauvais... 2/4

- commentaires obligés

```java
    /**
     * @param title Le titre du CD.
     * @param author L’auteur du CD.
     */
    public void addCD(String title, String author) {
        CD cd = new CD();
        cd.title = title;
        cd.author = author;
        cdList.add(cd);
    }
```

- commentaires de journalisation

```java
    /** Modifications (depuis le 11-Oct-2001)
    *
    * 11-Oct-2001 : Réorganisation de la classe et son déplacement dans
    * le nouveau paquetage com.jrefinery.date (DG).
    * 05-Nov-2001 : Ajout de la méthode getDesc ... */
```

§§
<!-- .slide: class="comment" -->
## Commentaires : et les mauvais... 3/4

- commentaires parasites

```java
    /** Constructeur par défaut. */
    protected AnnualDateRule() {}
    /** Le jour du mois. */
    private int dayOfMonth;
```

- bruit effrayant

```java
    /** La version. */
    private String version;
    /** Le licenceName. */
    private String licenceName;
    /** La version. */
    private String info;
```

- commentaire d'accolade fermante

```java
    while ((line = in.readLine()) != null) {
        [...]
    } // while
```


§§
<!-- .slide: class="comment" -->
## Commentaires : et les mauvais... 4/4

- code commenté

```java
    this.bytePos = writeBytes(pngIdBytes, 0);
    //hdrPos = bytePos;
    writeHeader();
    writeResolution();
    //dataPos = bytePos;
    if (writeImageData()) {
    writeEnd();
    this.pngBytes = resizeByteArray(this.pngBytes, this.maxPos);
    }
```
- trop d'informations

```java
    /*
        RFC 2045 - Multipurpose Internet Mail Extensions (MIME)
        Première Partie : Format des corps de message internet
        Section 6.8. Encodage de transfert Base64 du contenu
        Le traitement d'encodage représente les groupes de 24 bits entrants
        en une chaîne sortante encodée de 4 caractères. En traitant de la
        gauche vers la droite, un groupe entrant de 24 bits est formé en
        concaténant 3 groupes de 8 bits entrants. [...]
    */
```

§§
## Commentaires

- les commentaires _peuvent_ rendre un code<br>plus facile à comprendre
- mais ils peuvent aussi nuire à sa lisibilité
- ils mentent parfois, vieillissent très mal, ne sont pas refactorables, etc.
- définir des règles au début du projet

> ### ne commentez pas le mauvais code :<br>réécrivez-le !

Note:

Les commentaires qui paraphrasent le code sont nuisibles. Si vous ressentez l'obligation d'ajouter des commentaires, demandez-vous si ce n'est pas un constat d'échec : est-ce parce que votre code n'est pas assez expressif ? (nom de fonctions mal choisis par exemple)
Souvent on peut remplacer un commentaire par une fonction (on extrait le code qu'on voulait commenter).

A l'inverse il y a des cas où il est impératif de commenter : quand on utilise un hack par exemple, pour contourner un bug du langage / framework.
