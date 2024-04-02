mysql> use chevaux;
Database changed

mysql> select count(couleur) as number_of_horses from cheval
    -> where couleur = 'Noir';
+------------------+
| number_of_horses |
+------------------+
|                1 |
+------------------+
1 row in set (0.00 sec)

mysql> select count(nom_race) as number_of_horses from cheval
    -> where nom_race = 'Angloarabe';
+------------------+
| number_of_horses |
+------------------+
|                1 |
+------------------+
1 row in set (0.00 sec)

mysql> select id_cheval, nom_cheval from cheval
    -> where no_tatouage = 'T0415';
+-----------+------------+
| id_cheval | nom_cheval |
+-----------+------------+
|         6 | dham       |
+-----------+------------+
1 row in set (0.00 sec)

mysql> select count(lieu) from concours
    -> where lieu = 'dubai';
+-------------+
| count(lieu) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(No_participants) from concours
    -> where lieu = 'dubai';
+----------------------+
| sum(No_participants) |
+----------------------+
|                  200 |
+----------------------+
1 row in set (0.00 sec)


mysql> select nom_concours,nom_cheval from cheval_concours
    -> join cheval
    -> where cheval_concours.id_cheval = cheval.id_cheval and cheval_concours.place = 1;
+--------------+------------+
| nom_concours | nom_cheval |
+--------------+------------+
| mawazine     | edhum      |
| dubai        | misklil    |
+--------------+------------+
2 rows in set (0.00 sec)

mysql> SELECT nom_cheval
    -> FROM cheval
    -> JOIN cheval_concours ON cheval.id_cheval = cheval_concours.id_cheval
    -> JOIN concours ON cheval_concours.nom_concours = concours.nom_concours
    -> WHERE cheval_concours.nom_concours = 'Londres' and concours.annee BETWEEN '2018-01-01' AND '2018-12-31'
    -> ;
+------------+
| nom_cheval |
+------------+
| edhum      |
| misklil    |
+------------+
2 rows in set (0.00 sec)

mysql> select nom, prenom from personne
    -> where fonction = 'directeur';
+-----------+--------+
| nom       | prenom |
+-----------+--------+
| el kelkha | saad   |
+-----------+--------+
1 row in set (0.00 sec)

mysql> select count(id_personne) from personne
    -> where fonction = 'propriétaire';
+--------------------+
| count(id_personne) |
+--------------------+
|                  4 |
+--------------------+
1 row in set (0.00 sec)

mysql> select count(id_personne) from proprietaire
    -> where id_personne = 3 and date_achat between '2020-01-01' and '2020-12-31';
+--------------------+
| count(id_personne) |
+--------------------+
|                  1 |
+--------------------+
1 row in set (0.00 sec)

mysql> select prix from proprietaire
    -> where id_personne = 3 and date_achat between '2020-01-01' and '2020-12-31';
+--------+
| prix   |
+--------+
| 100000 |
+--------+
1 row in set (0.00 sec)

mysql>