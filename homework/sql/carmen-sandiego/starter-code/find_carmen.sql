edgarmendez=# select name, continent, population FROM country where continent = 'Europe' order by population asc
edgarmendez-# ;
             name              | continent | population
-------------------------------+-----------+------------
 Holy See (Vatican City State) | Europe    |       1000
 Svalbard and Jan Mayen        | Europe    |       3200
 Gibraltar                     | Europe    |      25000
 San Marino                    | Europe    |      27000
 Liechtenstein                 | Europe    |      32300
 Monaco                        | Europe    |      34000
 Faroe Islands                 | Europe    |      43000
 Andorra                       | Europe    |      78000
 Iceland                       | Europe    |     279000
 Malta                         | Europe    |     380200
 Luxembourg                    | Europe    |     435700
 Estonia                       | Europe    |    1439200



 edgarmendez=# select code from country where name ILIKE '%Holy%';
 code
------
 VAT
(1 row)

edgarmendez=# select * from countrylanguage where countrycode = 'VAT';
 countrycode | language | isofficial | percentage
-------------+----------+------------+------------
 VAT         | Italian  | t          |          0
(1 row)

edgarmendez=# SELECT * FROM countrylanguage where language = 'Italian' and percentage = '100';
 countrycode | language | isofficial | percentage
-------------+----------+------------+------------
 SMR         | Italian  | t          |        100
(1 row)

edgarmendez=# select name from country where code = 'SMR';
    name
------------
 San Marino
(1 row)

edgarmendez=# SELECT name from city where countrycode = 'SMR';
    name
------------
 Serravalle
 San Marino
(2 rows)

clue # 5:

edgarmendez=# select * from city where name ILIKE '%Serr%';
  id  |         name         | countrycode |     district      | population
------+----------------------+-------------+-------------------+------------
  265 | Serra                | BRA         | Espï¿½rito Santo  |     302666
  310 | Taboï¿½o da Serra    | BRA         | Sï¿½o Paulo       |     197550
  370 | Itapecerica da Serra | BRA         | Sï¿½o Paulo       |     126672
 3170 | Serravalle           | SMR         | Serravalle/Dogano |       4802
(4 rows)

dgarmendez=# select name from country where code = 'BRA';
  name
--------
 Brazil
(1 row)

clue # 6:

edgarmendez=# select capital from country where name = 'Brazil';
 capital
---------
     211
(1 row)

edgarmendez=# SELECT name FROM city WHERE id = '211';
    name
------------
 Brasï¿½lia
(1 row)

clue # 7:

dgarmendez=# select * from city where population = 91084;
  id  |     name     | countrycode |  district  | population
------+--------------+-------------+------------+------------
 4060 | Santa Monica | USA         | California |      91084
(1 row)

extra:

edgarmendez=# select * from city where id = '211';
 id  |    name    | countrycode |     district     | population
-----+------------+-------------+------------------+------------
 211 | Brasï¿½lia | BRA         | Distrito Federal |    1969868
(1 row)

edgarmendez=# UPDATE city SET name = 'Brasilia' WHERE id = '211';
UPDATE 1
edgarmendez=# select * from city where id = '211';
 id  |   name   | countrycode |     district     | population
-----+----------+-------------+------------------+------------
 211 | Brasilia | BRA         | Distrito Federal |    1969868
(1 row)







