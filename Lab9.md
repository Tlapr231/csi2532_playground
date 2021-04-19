# Laboratoire 9

Thierry Laprade


## Q1a: Test des fromes normales

Considérez la relation et les dépendances fonctionnelles suivantes. 

```
R=(A,B,C,D) 
F={
    AB -> C,   
    C -> D,   
    D -> A 
}
```

### a. Liste toutes les clés candidates de R.

```
(AB)+   = AB    
        = ABC
        = ABCD

(A)+    = A

(B)+    = B
```

Donc **AB** est une clés candidates de R

### b. Est-ce que R est dans 3NF? BCNF?

Oui R est dans 3NF

Non R n'est pas dans BCNF (car D -> A et D n'est pas primaire)

## Q1b: Test des fromes normales

Considérez la relation et les dépendances fonctionnelles suivantes.

```
R=(A,B,C,D) 
F={  
    A -> B,   
    B -> C,   
    C -> D,  
    D -> A 
}
```

### a. Liste toutes les clés candidates de R.

Aucune clé candidates

### b. Est-ce que R est dans 3NF? BCNF?

Non R n'est pas dans 3NF

Non R n'est pas dans BCNF

## Q1c: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.

```
S=(A,B,C,D) 
F={ 
    B -> C,
    C -> A,
    C -> D
}
```

### a. Liste toutes les clés candidates de R.

Aucune clé candidates

### b. Est-ce que R est dans 3NF? BCNF?

Non R n'est pas dans 3NF

Non R n'est pas dans BCNF

## Q1d: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.

```
R=(A,B,C,D) 
F={  
    ABC -> D,
    D -> A
}
```

### a. Liste toutes les clés candidates de R.

```
(ABC)+  = ABC
        = ABCD

(A)+    = A

(B)+    = B

(C)+    = C
```

Donc **ABC** est une clés candidate

### b. Est-ce que R est dans 3NF? BCNF?

Oui R est dans 3NF

Non R n'est pas dans BCNF

## Q1e: Test des formes normales

Considérez la relation et les dépendances fonctionnelles suivantes.

```
R=(A,B,C,D)
F={
 A -> C,
 B -> D
}
```

### a. Liste toutes les clés candidates de R.

AB

### b. Est-ce que R est dans 3NF? BCNF?

Oui R est dans 3NF

Oui R est dans BCNF

## Q2a: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes.

```
R=(A,B,C,D,E,F)
F={
 AB -> C,
 BC -> AD,
 D -> E,
 CF -> B
}
```

### Est AB -> D valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple

```
    AB   -> C 
=>  ABC  -> C       (par augmentation de C)
=>  ABC  -> AD      (par BC -> AD)
=>  ABCF -> ADF     (par augmentation de F)
=>  AB   -> ADF     (par pseudo-transitivité CF -> B)
=>  AB   -> D       (par décomposition)
```

Donc, Oui AB -> est valid.

## Q2b: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes.

```
R=(A,B,C)
F={
 AB -> C
}
```

### Est A -> C valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

Non puisque on a toujour besoin de A et B pour trouver C 

Exemple :

| A | B | C |
| - | - | - |
| a1| b1| 1 |
| a1| b2| 2 |
| a2| b2| 3 |

remarque que si on demmande pour C ou A = a1 on ne peut pas donner C avec certitude

## Q2c: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes.

```
R=(A,B,C)
F={
 AB -> C
}
```

### Est B -> C valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

Non puisque on a toujour besoin de A et B pour trouver C 

Exemple :

| A | B | C |
| - | - | - |
| a1| b1| 1 |
| a1| b2| 2 |
| a2| b2| 3 |

remarque que si on demmande pour C ou B = b2 on ne peut pas donner C avec certitude

## Q2d: Test de la dépendance fonctionnelle

Considérez la relation et les dépendances fonctionnelles suivantes.
```
R=(A,B,C)
F={
 AB -> C
}
```

### Est A -> C OR B -> C valid? Si oui, montrez une preuve formelle; sinon, donnez un contre-exemple.

Non puisque on a toujour besoin de A et B pour trouver C 

Exemple :

| A | B | C |
| - | - | - |
| a1| b1| 1 |
| a1| b2| 2 |
| a2| b1| 3 |
| a2| b2| 4 |

remarque que si on demmande pour C ou A = a1 ou B = b1 on ne peut pas donner C avec certitude (a1 = {1,2} et b1 = {1,3})

## Q3: Couverture canonique

Calculer une couverture canonique pour

```
F={
 B -> A,
 D -> A,
 AB -> D
}
```

### Réponse
Donc ici F+ :
```
F+  = ABD
```

Si on supprime B -> A et D -> A on a F = {AB -> D}

F+ devient :
```
(F+)    = AB
        = ABD (avec AB -> D)
```

Donc notre F+ est inchanger. 

Donc 

F = {AB -> D} est une couverture canonique pour F

## Q4: Décomposition BCNF

```
R = ABCDEFGH
F = {
 ABH -> C,
 A -> DE,
 BGH -> F,
 F -> ADH,
 BH -> GE
}
```

### Produire une décomposition BCNF de R.

```
(ABH)+  = ABH   
        = ABDEH         (A -> DE)
        = ABCDEH        (ABH -> C)
        = ABCDEGH       (BH -> GE)
        = ABCDEFGH      (BGH -> F)

(A)+    = A
        = ADE

(B)+    = B

(H)+    = H
```

```
(BGH)+  = BGH
        = BFGH
        = BEFGH
```

```
(BH)+   = BH
        = BEGH
        = BEFGH
```

Donc (BH)+ = (BGH)+

Avec cette information je peut utiliser BH comme clé primaire pour une autre table qui contiendra tout les valeur dans (BH)+. Ceci me donnera une décomposition BCNF.

```
R1 = ABHCD = ABCDH 
R2 = BHEFG = BEFGH
```
