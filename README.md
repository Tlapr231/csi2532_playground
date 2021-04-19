# CSI 2532 - Devoir 2

Thierry Laprade #300067788

## Q1: Normalisation

Considérez une relation avec le schéma R(A, B, C, D) et l'ensemble F des dépendances fonctionnelles:

```
F = {
    AB → C,
    C → D,
    D → A
}
```

### a. Trouver toutes les clés candidates de R.

n=1
| α | α+ | Candidate Key ? |  
| - | -- | --------------- |
| A | A | Non |
| B | B | Non |
| C | CD | Non |
| D | DA | Non |

n=2
| α | α+ | Candidate Key ? |  
| - | -- | --------------- |
| AB | ABCD | Oui |
| AC | ACD | Non |
| AD | AD | Non |
| BC | BCDA | Oui |
| BD | BDAC | Oui |
| CD | CDA | Non |

Puisque nous avons déja les clé minimale avec "AB", "BC" et "BD", on peut ignorer tout les clé qui contienne ces clé.

n=3
| α | α+ | Candidate Key ? |  
| - | -- | --------------- |
| ABC | Contient Clé "AB" | Non |
| ABD | Contient Clé "AB" | Non |
| ACD | ACD | Non |
| BCD | Contient Clé "BD" | Non |

Donc les clés candidate sont : "AB", "BC" et "BD"

### b. Indiquez toutes les violations de BCNF pour R et décomposez les relations en collections qui sont dans BCNF.



### c. Indiquez quelles dépendances, s'ils existent, qui ne sont pas conservées par la décomposition BCNF.

## Q2 : Dépendances fonctionnelles

| NIN | contractNo | hoursPerWeek | eName | hotelNo | hotelLocation |
| - | - | - | - | - | - |
| 113567WD | C1024 | 16 | John Smith | H25 | Edinburgh |
| 234111XA | C1024 | 24 | Diane Hocine | H25 | Edinburgh |
| 712670YD | C1025 | 28 | Sarah White | H4 | Glasgow |
| 113567WD | C1025 | 16 | John Smith | H4 | Glasgow |

### a. Sur informations ci-dessus, identifiez les quatre dépendances fonctionnelles décrites.


### b. Liste toutes les clés candidates.


### c. Normaliser la relation avec la troisième forme normale (3NF) montrer les relations résultantes.


## Q3: Langues pures

```
Sailors(sid, sname, rating, age)
Reserves(sid, bid, day)
Boat(bid, bname, bcolor)
```

### a. (RA) Listez les couleurs des bateaux réservés par Albert.


### b. (RA) Listez les identifiants de tous les marins ayant une évaluation (rating) d'au moins 8 ouun bateau réservé 103.


### c. (TRC) Listez les noms et l'âge de tous les marins qui ont une évaluation inférieure à 3.


### d. (RDC) Listez les identifiants de tous les bateaux réservés le 2019-04-28.


### e. (RDC) Listez les couleurs de tous les bateaux réservés par le marin Lubber.


## Q4: RAID

| Déclaration | Déclaration |
| - | - |
| 1 - Je peux utiliser une technique RAID niveau 0 car | A - la tolérance aux pannes est importante pour mon application et je dois protéger mes données même si deux disques tombent en panne en même temps. |
| 2 - Je peux utiliser une technique RAID niveau 1 car | B - je n'inquiet pas de perdre les données. Mon objectif principal est de pouvoir lire et écrire à grande vitesse. |
| 3 - Je peux utiliser une technique RAID niveau 5 car | C - j'ai 6 disques disponibles mais j'ai besoin de la capacité de 5 d'entre eux ce qui signifie que je ne peux pas gaspier l'espace qu'un seul disque pour assurer la redondance. |
| 4 - Je peux utiliser une technique RAID niveau 6 car | D - je n'ai que deux disques disponibles, ce qui représente plus du double de la capacité dont j'ai besoin pour mon application et je veut être capable de récupérer les données si nécessaire. |
| 5 - Je préfère utiliser une approche paritaire plutôt qu'une approche miroir car | E - la tolérance aux pannes est importante pour mon application, mais je n'ai pas beaucoup d'espace disponible. |

### Réponse :

| Déclaration | Correspond à |
| - | - |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |


## Q5: Arbre B+

### a. Montrez l'arbre B+ qui résulte après l'insertion (dans l'ordre donné) 56, 50, 75, 87, 48.


### b. En utilisant l'arbre B+ précédemment obtenu en (a.), Montrez l'arbre B+ qui résulte après suppression (dans l'ordre donné) 50, 24, 65, 93, 75.


## Q6: Index Bitmap

### a. Construisez un index bitmap pour les attributs marque (Brand) et coleur (Color) de ce tableau.
### b. Montrez comment les indices bitmap peuvent être utilisés pour répondre aux requêtes:
#### i. Montrez la marque (Brand) de toutes les voitures qui ne sont pas noires (Black).
#### ii. Donnez le nombre total de voitures Opel (Opel) rouges (Red) avec un score de risque moyen (Medium).


## Q7: Hachage

### a. Utilisez cette fonction pour créer l'index de hachage des valeurs de clé de recherche suivantes: 2, 4, 6, 12, 13, 16, 20, 24, 28, 40


### b. Basé sur ces valeurs de clé de recherche, est-ce que cette fonction est une bonne fonction de hachage? Expliquez votre réponse.