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



