---
separator: §§
verticalSeparator: §§§
---



<!-- .slide: class="nommage" -->
## Nommages explicites 1/6

- Choisir des noms révélateurs des intentions

```java
    int d; // Temps écoulé en jours
    int elapsedTimeInDays;
```

- Éviter la désinformation

```java
    String hp; // hp : plateforme ou hypothénuse ?
    Array accountList; // remplacer le nom de la variable par : accounts
```

- Faire des distinctions significatives

```java
    getActiveAccount();  getActiveAccounts();  getActiveAccountInfo();
```

- Choisir des noms prononçables

```java
    // génération (gen), année(y), mois(m), jour(d), heure(h), min(m), sec(s)
    private Date genymdhms; 
```

§§
<!-- .slide: class="nommage" -->
## Nommages explicites 2/6

- Choisir des noms compatibles avec une recherche

```java
// BAD
    for (int j=0; j<34; j++) {
        s += (t[j] * 4) / 5;
    }
// GOOD
    int sum = 0, realDaysPerIdealDay = 4, WORK_DAYS_PER_WEEK = 5;
    for (int j=0; j < NUMBER_OF_TASKS; j++) {
        sum += taskEstimate[j] * realDaysPerIdealDay / WORK_DAYS_PER_WEEK;
    }
```

- Éviter la codification

```java
// BAD
    PhoneNumber phoneString; // nom inchangé suite au changement de type !
    public interface IShapeFactory {} // préfixe I : distraction, trop d'info
// GOOD
    public interface ShapeFactory {}
    public ShapeFactoryImpl implements ShapeFactory {}
```

§§
<!-- .slide: class="nommage" -->
## Nommages explicites 3/6

- Éviter les associations mentales

```java
    int i, j, k; // indicateur de boucle -> OK
    int a, r, l; // seul (et encore) le développeur de ce code peut
                 // comprendre à quelles notions correspondent ces variables
```

- Noms des classes

```java
// BAD : un nom de classe ne doit pas être un terme générique ou un verbe
    public Data, Info, Buy;
// GOOD : choisir des noms ou des groupes nominaux
    public Customer, WikiPage, Account;
```

- Noms des méthodes

```java
    // verbes ou groupes verbaux
    public void postPayment, deletePage, save() {}
    // get, set, is
    employee.getName(); paycheck.isPosted();
    // méthodes de fabrique statiques (avec constructeurs private)
    Complex fulcrumPoint = Complex.FromRealNumber(23.0);
```

§§
<!-- .slide: class="nommage" -->
## Nommages explicites 4/6

- Ne pas faire le malin

```java
    holyHandGrenade(); // remplacer par : deleteItem();
    eatMyShorts();     // remplacer par : abort();
```

- Choisir un mot par concept

```java
    get, fetch, retrieve; // il ne peut en rester qu'un ;)
    DeviceManager, ProtocolController; // différence Manager & Controller ?
```

- Éviter les jeux de mots

```java
    employeService.add("Bob"); // crée une nouvelle valeur
    accountService.add("bobAccount"); // ajoute valeur : conflit notion "add"
    accountService.insert("bobAccount"); // préférer insert : évite conflit
```

- Choisir des noms dans le domaine du problème

```java
// Lorsqu’il n’existe aucun terme informatique pour ce que vous faites, 
// utilisez le nom issu du domaine du problème. Le programmeur qui maintient
// votre code pourra alors demander à un expert du domaine ce qu’il signifie.
```

§§
<!-- .slide: class="nommage" -->
## Nommages explicites 5/6

- Choisir des noms dans le domaine de la solution

```java
    // utilisez des termes informatiques pour des concepts techniques
    // et non des noms liés au métier
    AccountVisitor
    JobQueue
```

- Ajouter un contexte significatif

```java
    private state; // lié à une adresse ou non ?
    private addrState, addrFirstName, addrLastName; // ajout préfixe contexte
```

- Ne pas ajouter de contexte inutile

```java
// application GDS - Gas Station Deluxe
// BAD
    public class GSDAccountAddress() {}  // 
// GOOD
    public class Address() {}  // PostalAddress, MAC, URI, ...
    // instance
    private Address accountAddress, customerAddress;
```

§§
<!-- .slide: class="nommage" -->
## Nommages explicites 6/6 

- **Magic numbers** : utiliser des **constantes** aux noms **parlants**

```java
    private int SECONDS_PER_DAY = 86400;

    private int LINES_PER_PAGE = 55;

    private String STATUS_PENDING = "pending";
```

- mais vous pouvez conserver certaines valeurs _naturellement_ parlantes

```java
    int nbSecondsByWeek = 7 * SECONDS_PER_DAY;

    double circumference = 2 * Math.PI * radius;
```

