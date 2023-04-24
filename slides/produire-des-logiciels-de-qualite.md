# Produire des logiciels de qualité

---

## Second slide

--

## Plan

Produire des logiciels de qualité

*  Introduction
*  Un sport d'équipe
  * La revue de code
    * Pourquoi faire des revues de code ?
    * Qui valide la revue ?
      * Les architectes du système d'information : (oligarchie)
      * Le tech lead de l'équipe : Autocratie
      * Des membres de l'équipe : Démocratie, démocratie participative (représentant tournants)
      * Toute l'équipe : Holacratie, anarchie (personne ne décide)
  * La formation collective
  * Les katas
  * 
*  Aimer et maitriser les tests
  * Développer du code avec le TDD
  * Tester du code legacy
  * Stratégie de test : 
    * en général
    * sur des apps back
    * sur des apps front
    * sur des back orientée data
* Produire des logiciels maintenables
  * du code maintenable
  * architecture maintenable


> Best quote ever.



Note: speaker notes FTW!
@startuml

usecase agilite as "Agilité"
usecase codefiable as "Code fiable"
usecase codeevolutif as "Code évolutif"
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