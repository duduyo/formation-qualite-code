---
separator: §§
verticalSeparator: §§§
---

<!-- .slide: class="demeter" -->
## Loi de demeter

> "Ne parlez qu'à vos amis immédiats"

![demeter](images/PantlessLawOfDemeter.jpg) 

```java
    // BAD
    public void addCash(Pants) {
        Money money = Pants.Pockets[1].Wallet.Money;
        cashRegister.add(money);
    }
    
```

```java
    // GOOD
    public void addCash(Money) {
        cashRegister.add(money);
    }
```


Note:

voir articles http://www.arolla.fr/blog/2017/02/principes-solid-vie-de-jours/
