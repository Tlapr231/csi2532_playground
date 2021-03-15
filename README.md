# Laboratoire 7

Thierry Laprade #300067788

## E1) Données sur les athlètes

### 20 Athlètes Masculins :
```sql
INSERT INTO athletes 
    (identifier, name, email, nationality, dob, identified_gender, other_info) 
VALUES 
    (3, 'Shaun Washington', 'shaun.w@gmail.com', 'Ireland', '1987-09-07', 'm', 'N/A'),
    (5, 'Ibraheem Rudd', 'ibraheem.r@gmail.com', 'Rwanda', '1999-08-23', 'm', 'N/A'),
    (6, 'Paris Frame', 'paris.f@gmail.com', 'Madagascar', '2002-04-04', 'm', 'N/A'),
    (10, 'Rylan Newton', 'rylan.n@gmail.com', 'Cayman Islands', '1985-07-27', 'm', 'N/A'),
    (11, 'Chad Herrera', 'chad.h@gmail.com', 'Luxembourg', '1985-08-21', 'm', 'N/A'),
    (12, 'Jayden Nelson', 'jayden.b@gmail.com', 'Mauritania', '2001-09-08', 'm', 'N/A'),
    (13, 'Shakir Buck', 'shakir@gmail.com', 'Kuwait', '1957-07-20', 'm', 'N/A'),
    (14, 'Benny Villegas', 'benny@gmail.com', 'Norfolk Island', '1959-11-29', 'm', 'N/A'),
    (15, 'Hal Salinas', 'hal@gmail.com', 'Azerbaijan', '1964-03-22', 'm', 'N/A'),
    (16, 'Jaxson Donovan', 'jaxson@gmail.com', 'Estonia', '1966-08-09', 'm', 'N/A'),
    (17, 'Zohaib Lyons', 'zohaib@gmail.com', 'Kiribati', '1969-11-21', 'm', 'N/A'),
    (18, 'Akash Hardy', 'akash@gmail.com', 'Mauritania', '1970-01-30', 'm', 'N/A'),
    (19, 'Syed Hoffman', 'syed@gmail.com', 'Pakistan', '1974-12-29', 'm', 'N/A'),
    (20, 'Cali Cope', 'cali@gmail.com', 'Singapore', '1976-08-18', 'm', 'N/A'),
    (21, 'Tyreke Becker', 'tyreke@gmail.com', 'Paraguay', '1980-07-03', 'm', 'N/A'),
    (22, 'Kairon David', 'kairon@gmail.com', 'Japan', '1983-07-14', 'm', 'N/A'),
    (23, 'Hareem Berger', 'hareem@gmail.com', 'Puerto Rico', '1987-08-03', 'm', 'N/A'),
    (24, 'Riccardo Witt', 'riccardo@gmail.com', 'Aland Islands', '1989-04-14', 'm', 'N/A'),
    (25, 'Marcus Barlow', 'marcus@gmail.com', 'Cambodia', '1992-03-16', 'm', 'N/A'),
    (26, 'Sonny Mccoy', 'sonny@gmail.com', 'Falkland Islands', '2001-08-20', 'm', 'N/A');
```

### 20 Athlètes Féminins :
```sql
INSERT INTO athletes 
    (identifier, name, email, nationality, dob, identified_gender, other_info) 
VALUES 
    (1, 'Kyla Bowers', 'kyla.b@gmail.com', 'Canada', '1989-05-28', 'f', 'I am a great runner'),
    (2, 'Everly Petersen', 'everly.p@gmail.com', 'United States', '1990-04-23', 'f', 'N/A'),
    (4, 'Ella-Rose Sullivan', 'ella-rose.s@gmail.com', 'United Kindom', '1997-05-17', 'f', 'N/A'),
    (7, 'Kaira Gale', 'kaira.g@gmail.com', 'Cocos Islands', '1947-11-26', 'f', 'N/A'),
    (8, 'Tianna Quintero', 'tianna.q@gmail.com', 'Mauritania', '1954-09-26', 'f', 'N/A'),
    (9, 'Chloe Mcfadden', 'chloe.mf@gmail.com', 'Palestine', '1978-09-29', 'f', 'N/A'),
    (27, 'Sydney Schmidt', 'sydney@gmail.com', 'Luxembourg', '1955-05-05', 'f', 'N/A'),
    (28, 'Maeve Chamberlain', 'maeve@gmail.com', 'South Sudan', '1967-12-06', 'f', 'N/A'),
    (29, 'Emma Galloway', 'emma@gmail.com', 'France', '1968-12-07', 'f', 'N/A'),
    (30, 'Marcia Mahoney', 'marcia@gmail.com', 'Palestine', '1969-02-04', 'f', 'N/A'),
    (31, 'Delia Gallagher', 'delia@gmail.com', 'Ireland', '1970-01-17', 'f', 'N/A'),
    (32, 'Efa Zhang', 'efa@gmail.com', 'Mexico', '1971-08-17', 'f', 'N/A'),
    (33, 'Martyna Fitzpatrick', 'martyna@gmail.com', 'El Salvador', '1978-03-26', 'f', 'N/A'),
    (34, 'Stella Bautista', 'stella@gmail.com', 'Norfolk Island', '1979-11-10', 'f', 'N/A'),
    (35, 'Ikrah East', 'ikrah@gmail.com', 'Turkey', '1980-02-23', 'f', 'N/A'),
    (36, 'Ammarah Hahn', 'ammarah@gmail.com', 'Malaysia', '1982-06-22', 'f', 'N/A'),
    (37, 'Aliya Battle', 'aliya@gmail.com', 'Suriname', '1986-06-20', 'f', 'N/A'),
    (38, 'Angela Browne', 'angela@gmail.com', 'Bangladesh', '1986-09-02', 'f', 'N/A'),
    (39, 'Lauren Vickers', 'lauren@gmail.com', 'Democratic Republic of the Congo', '1986-11-19', 'f', 'N/A'),
    (40, 'Jasleen Burn', 'jasleen@gmail.com', 'Serbia', '1987-11-28', 'f', 'N/A'),
```

## E2) Données sur les compétitions

Pour mon implémentation du project, j'assume qu'une compétition peut avoir plusieur différent événement (pennsez au olympic ou il y a plusieur événement marqué différament qui font partie de la compétition "olympic"). Donc les changement pour les suporter les scénario seront fait sur ma table d'événement.

### 5 Compétitions :
```sql
INSERT INTO competitions 
    (name, venue, start_date, start_time, duration, max_m_athletes, max_f_athletes, num_events, contact_name, contact_email, contact_phone) 
VALUES
    ('Athletics', 'Japan National Stadium', '2021-06-01', '08:30:00', 4, NULL, NULL, 3, 'Daniel Coates', 'daniel.c@gmail.com', '+1-613-555-0157'),
    ('Push Ups', 'Japan National Stadium', '2021-06-17', '12:00:00', 5, NULL, NULL, 1, 'Dilan Correa', 'dilan.c@gmail.com', '+1-613-555-0130'),
    ('Swimming Men', 'Japan National Stadium', '2021-07-25', '09:00:00', 4, 32, 0, 8, 'Magdalena Hines', 'magdalena.h@gmail.com', '+1-613-555-0179'),
    ('Swimming Women', 'Japan National Stadium', '2021-07-26', '11:30:00', 4, 0, 32, 8, 'Ceara Schmitt', 'ceara.s@gmail.com', '+1-613-555-0127'),
    ('Pull Ups', 'Japan National Stadium', '2021-08-20', '10:00:00', 3, 20, 20, 2, 'Chloe Chavez', 'chloe.c@gmail.com', '+1-613-555-0110');
```

## E3) Matrice d'événements

### Table de vériter :

| # | Score principale | Tie-Break principale | Score secondaire | Tie-Break secondaire |
| - | ---------------- | -------------------- | ---------------- | -------------------- |
| 1 | Count DESC | NULL | NULL | NULL | 
| 2 | Count DESC | Time ASC | NULL | NULL | 
| 3 | Count DESC | Time DESC | NULL | NULL | 
| 4 | Count DESC | Count ASC | NULL | NULL | 
| 5 | Count DESC | Count DESC | NULL | NULL | 
| 6 | Count ASC | NULL | NULL | NULL | 
| 7 | Count ASC | Time ASC | NULL | NULL | 
| 8 | Count ASC | Time DESC | NULL | NULL | 
| 9 | Count ASC | Count ASC | NULL | NULL | 
| 10 | Count ASC | Count DESC | NULL | NULL | 
| 11 | Time DESC | NULL | NULL | NULL | 
| 12 | Time DESC | Time ASC | NULL | NULL | 
| 13 | Time DESC | Time DESC | NULL | NULL | 
| 14 | Time DESC | Count ASC | NULL | NULL | 
| 15 | Time DESC | Count DESC | NULL | NULL | 
| 16 | Time ASC | NULL | NULL | NULL | 
| 17 | Time ASC | Time ASC | NULL | NULL | 
| 18 | Time ASC | Time DESC | NULL | NULL | 
| 19 | Time ASC | Count ASC | NULL | NULL | 
| 20 | Time ASC | Count DESC | NULL | NULL | 
||
| 21 | Time ASC | NULL | NULL | NULL | 
| 22 | Time ASC | NULL | Time ASC | NULL | 
| 23 | Time ASC | NULL | Time DESC | NULL | 
| 24 | Time ASC | NULL | Count ASC | NULL | 
| 25 | Time ASC | NULL | Count DESC | NULL | 
||
| 26 | Time ASC | Time ASC | NULL | NULL | 
| 27 | Time ASC | Time ASC | NULL | Time ASC | 
| 28 | Time ASC | Time ASC | NULL | Time DESC | 
| 29 | Time ASC | Time ASC | NULL | Count ASC | 
| 30 | Time ASC | Time ASC | NULL | Count DESC | 
| 31 | Time ASC | Time ASC | Time ASC | NULL | 
| 32 | Time ASC | Time ASC | Time ASC | Time ASC | 
| 33 | Time ASC | Time ASC | Time ASC | Time DESC | 
| 34 | Time ASC | Time ASC | Time ASC | Count ASC | 
| 35 | Time ASC | Time ASC | Time ASC | Count DESC | 
| 36 | Time ASC | Time ASC | Time DESC | NULL | 
| 37 | Time ASC | Time ASC | Time DESC | Time ASC | 
| 38 | Time ASC | Time ASC | Time DESC | Time DESC | 
| 39 | Time ASC | Time ASC | Time DESC | Count ASC | 
| 40 | Time ASC | Time ASC | Time DESC | Count DESC | 
| 41 | Time ASC | Time ASC | Count ASC | NULL | 
| 42 | Time ASC | Time ASC | Count ASC | Time ASC | 
| 43 | Time ASC | Time ASC | Count ASC | Time DESC | 
| 44 | Time ASC | Time ASC | Count ASC | Count ASC | 
| 45 | Time ASC | Time ASC | Count ASC | Count DESC | 
| 46 | Time ASC | Time ASC | Count DESC | NULL | 
| 47 | Time ASC | Time ASC | Count DESC | Time ASC | 
| 48 | Time ASC | Time ASC | Count DESC | Time DESC | 
| 49 | Time ASC | Time ASC | Count DESC | Count ASC | 
| 50 | Time ASC | Time ASC | Count DESC | Count DESC | 
||
| 51 | Time ASC | Time DESC | NULL | NULL | 
| 52 | Time ASC | Time DESC | NULL | Time ASC | 
| 53 | Time ASC | Time DESC | NULL | Time DESC | 
| 54 | Time ASC | Time DESC | NULL | Count ASC | 
| 55 | Time ASC | Time DESC | NULL | Count DESC | 
| 56 | Time ASC | Time DESC | Time ASC | NULL | 
| 57 | Time ASC | Time DESC | Time ASC | Time ASC | 
| 58 | Time ASC | Time DESC | Time ASC | Time DESC | 
| 59 | Time ASC | Time DESC | Time ASC | Count ASC | 
| 60 | Time ASC | Time DESC | Time ASC | Count DESC | 
| 61 | Time ASC | Time DESC | Time DESC | NULL | 
| 62 | Time ASC | Time DESC | Time DESC | Time ASC | 
| 63 | Time ASC | Time DESC | Time DESC | Time DESC | 
| 64 | Time ASC | Time DESC | Time DESC | Count ASC | 
| 65 | Time ASC | Time DESC | Time DESC | Count DESC | 
| 66 | Time ASC | Time DESC | Count ASC | NULL | 
| 67 | Time ASC | Time DESC | Count ASC | Time ASC | 
| 68 | Time ASC | Time DESC | Count ASC | Time DESC | 
| 69 | Time ASC | Time DESC | Count ASC | Count ASC | 
| 70 | Time ASC | Time DESC | Count ASC | Count DESC | 
| 71 | Time ASC | Time DESC | Count DESC | NULL | 
| 72 | Time ASC | Time DESC | Count DESC | Time ASC | 
| 73 | Time ASC | Time DESC | Count DESC | Time DESC | 
| 74 | Time ASC | Time DESC | Count DESC | Count ASC | 
| 75 | Time ASC | Time DESC | Count DESC | Count DESC | 
||
| 76 | Time ASC | Count ASC | NULL | NULL | 
| 77 | Time ASC | Count ASC | NULL | Time ASC | 
| 78 | Time ASC | Count ASC | NULL | Time DESC | 
| 79 | Time ASC | Count ASC | NULL | Count ASC | 
| 80 | Time ASC | Count ASC | NULL | Count DESC | 
| 81 | Time ASC | Count ASC | Time ASC | NULL | 
| 82 | Time ASC | Count ASC | Time ASC | Time ASC | 
| 83 | Time ASC | Count ASC | Time ASC | Time DESC | 
| 84 | Time ASC | Count ASC | Time ASC | Count ASC | 
| 85 | Time ASC | Count ASC | Time ASC | Count DESC | 
| 86 | Time ASC | Count ASC | Time DESC | NULL | 
| 87 | Time ASC | Count ASC | Time DESC | Time ASC | 
| 88 | Time ASC | Count ASC | Time DESC | Time DESC | 
| 89 | Time ASC | Count ASC | Time DESC | Count ASC | 
| 90 | Time ASC | Count ASC | Time DESC | Count DESC | 
| 91 | Time ASC | Count ASC | Count ASC | NULL | 
| 92 | Time ASC | Count ASC | Count ASC | Time ASC | 
| 93 | Time ASC | Count ASC | Count ASC | Time DESC | 
| 94 | Time ASC | Count ASC | Count ASC | Count ASC | 
| 95 | Time ASC | Count ASC | Count ASC | Count DESC | 
| 96 | Time ASC | Count ASC | Count DESC | NULL | 
| 97 | Time ASC | Count ASC | Count DESC | Time ASC | 
| 98 | Time ASC | Count ASC | Count DESC | Time DESC | 
| 99 | Time ASC | Count ASC | Count DESC | Count ASC | 
| 100 | Time ASC | Count ASC | Count DESC | Count DESC | 
||
| 101 | Time ASC | Count DESC | NULL | NULL | 
| 102 | Time ASC | Count DESC | NULL | Time ASC | 
| 103 | Time ASC | Count DESC | NULL | Time DESC | 
| 104 | Time ASC | Count DESC | NULL | Count ASC | 
| 105 | Time ASC | Count DESC | NULL | Count DESC | 
| 106 | Time ASC | Count DESC | Time ASC | NULL | 
| 107 | Time ASC | Count DESC | Time ASC | Time ASC | 
| 108 | Time ASC | Count DESC | Time ASC | Time DESC | 
| 109 | Time ASC | Count DESC | Time ASC | Count ASC | 
| 110 | Time ASC | Count DESC | Time ASC | Count DESC | 
| 111 | Time ASC | Count DESC | Time DESC | NULL | 
| 112 | Time ASC | Count DESC | Time DESC | Time ASC | 
| 113 | Time ASC | Count DESC | Time DESC | Time DESC | 
| 114 | Time ASC | Count DESC | Time DESC | Count ASC | 
| 115 | Time ASC | Count DESC | Time DESC | Count DESC | 
| 116 | Time ASC | Count DESC | Count ASC | NULL | 
| 117 | Time ASC | Count DESC | Count ASC | Time ASC | 
| 118 | Time ASC | Count DESC | Count ASC | Time DESC | 
| 119 | Time ASC | Count DESC | Count ASC | Count ASC | 
| 120 | Time ASC | Count DESC | Count ASC | Count DESC | 
| 121 | Time ASC | Count DESC | Count DESC | NULL | 
| 122 | Time ASC | Count DESC | Count DESC | Time ASC | 
| 123 | Time ASC | Count DESC | Count DESC | Time DESC | 
| 124 | Time ASC | Count DESC | Count DESC | Count ASC | 
| 125 | Time ASC | Count DESC | Count DESC | Count DESC | 

Note : SVP. Je ne veut pas jamais refaire une table de 125 éléments de ma vie...


## E4) Database Models

Pour mon implémentation du project, j'assume qu'une compétition peut avoir plusieur différent événement (pennsez au olympic ou il y a plusieur événement marqué différament qui font partie de la compétition "olympic"). Donc les changement pour les suporter les scénario seront fait sur ma table d'événement.

Table 'events' :
```sql
CREATE TABLE events (
    event_id SERIAL,
    created timestamp DEFAULT Now(), 
    modified timestamp DEFAULT Now(),
    name varchar(200),
    description varchar(500),
    main_score varchar(30),
    main_tiebreak varchar(30),
    secondary_score varchar(30),
    secondary_tiebreak varchar(30),
    PRIMARY KEY (event_id)
);
```

Noté que j'ai ajouter 'main_score', 'main_tiebreak', 'secondary_score' et 'secondary_tiebreak'.

Table 'scores' :
```sql
CREATE TABLE scores (
    score_id SERIAL,
    athlete_id int,
    event_id int,
    created timestamp DEFAULT Now(), 
    modified timestamp DEFAULT Now(),
    rank int,
    main_score_score NUMERIC(12, 3),
    main_tiebreak_score NUMERIC(12, 3),
    secondary_score_score NUMERIC(12, 3),
    secondary_tiebreak_score NUMERIC(12, 3),
    PRIMARY KEY (score_id),
    constraint fk_scores_athletes
        FOREIGN KEY (athlete_id)
        REFERENCES athletes (athlete_id),
    constraint fk_scores_event
        FOREIGN KEY (event_id)
        REFERENCES events (event_id)
);
```

Noté que pour chaque nouvelles sections de 'events' j'ai ajouter une façons de tracker n'importe qu'elle score et j'utiliserait les valuer dans events pour les afficher corectement.


Note pour le projet : main_score => secondary_score => main_tiebreak => secondary_tiebreak