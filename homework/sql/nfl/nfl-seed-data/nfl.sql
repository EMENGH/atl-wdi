step 1:
"Commit: NFL - I seeded the database with the players and teams info"

step 2: saving queries in this file.

step 3:

1.
nfl=# select name from teams;
         name
----------------------
 Buffalo Bills
 Miami Dolphins
 New England Patriots
 New York Jets
 Baltimore Ravens
 Cincinnati Bengals
 Cleveland Browns
 Pittsburgh Steelers
 Houston Texans
 Indianapolis Colts
 Jacksonville Jaguars
 Tennessee Titans
 Denver Broncos
 Kansas City Chiefs
 Oakland Raiders
 San Diego Chargers
 Dallas Cowboys
 New York Giants
 Philadelphia Eagles
 Washington Redskins
 Chicago Bears
 Detroit Lions
 Green Bay Packers
 Minnesota Vikings
 Atlanta Falcons
 Carolina Panthers
 New Orleans Saints
 Tampa Bay Buccaneers
 Arizona Cardinals
 St. Louis Rams
 San Francisco 49ers
 Seattle Seahawks
(32 rows)


 2.
           stadium            |   head_coach
-------------------------------+----------------
 Ralph Wilson Stadium          | Doug Marrone
 Sun Life Stadium              | Joe Philbin
 Gillette Stadium              | Bill Belichick
 MetLife Stadium               | Rex Ryan
 M&T Bank Stadium              | John Harbaugh
 Paul Brown Stadium            | Marvin Lewis
 FirstEnergy Stadium           | Mike Pettine
 Heinz Field                   | Mike Tomlin
 NRG Stadium                   | Bill OBrien
 Lucas Oil Stadium             | Chuck Pagano
 EverBank Field                | Gus Bradley
 LP Field                      | Ken Whisenhunt
 Sports Authority Field        | John Fox
 Arrowhead Stadium             | Andy Reid
 O.co Coliseum                 | Tony Sparano
 Qualcomm Stadium              | Mike McCoy
 AT&T Stadium                  | Jason Garrett
 MetLife Stadium               | Tom Coughlin
 Lincoln Financial Field       | Chip Kelly
 FedExField                    | Jay Gruden
 Soldier Field                 | Marc Trestman
 Ford Field                    | Jim Caldwell
 Lambeau Field                 | Mike McCarthy
 TCF Bank Stadium              | Mike Zimmer
 Georgia Dome                  | Mike Smith
 Bank of America Stadium       | Ron Rivera
 Mercedes-Benz Superdome       | Sean Payton
 Raymond James Stadium         | Lovie Smith
 University of Phoenix Stadium | Bruce Arians
 Edward Jones Dome             | Jeff Fisher
 Levis Stadium                 | Jim Harbaugh
 CenturyLink Field             | Pete Carroll
(32 rows)

3.
nfl=# select head_coach from teams where conference = 'AFC' and division = 'South';
   head_coach
----------------
 Bill OBrien
 Chuck Pagano
 Gus Bradley
 Ken Whisenhunt
(4 rows)


4.
nfl=# select count (*) from players;
 count
-------
  1532
(1 row)

5.
nfl=# select head_coach from teams where (conference = 'NFC' and division = 'North') or (conference = 'AFC' and division = 'East');
   head_coach
----------------
 Doug Marrone
 Joe Philbin
 Bill Belichick
 Rex Ryan
 Marc Trestman
 Jim Caldwell
 Mike McCarthy
 Mike Zimmer
(8 rows)

6.
nfl=# select name, salary from players order by salary desc limit 50;
          name           |  salary
-------------------------+----------
 Peyton Manning          | 18000000
 Drew Brees              | 15760000
 Dwight Freeney          | 14035000
 Elvis Dumervil          | 14000000
 Michael Vick            | 12500000
 Sam Bradford            | 12000000
 Jared Allen             | 11619850
 Matt Ryan               | 11500000
 Matthew Stafford        | 11500000
 Tamba Hali              | 11250000
 Jake Long               | 11200000
 Trent Williams          | 11000000
 Nnamdi Asomugha         | 11000000
 Vincent Jackson         | 11000000
 Cliff Avril             | 10600000
 Calais Campbell         | 10600000
 Joe Thomas              | 10500000
 Brent Grimes            | 10431000
 Peyton Manning (buyout) | 10400000
 Chris Long              | 10310000
 Philip Rivers           | 10200000
 Jason Smith             | 10000000
 David Harris            |  9900000
 Wes Welker              |  9515000
 Davin Joseph            |  9500000
 Dwayne Bowe             |  9443000
 Asante Samuel           |  9400000
 Brandon Marshall        |  9300000
 Ndamukong Suh           |  9250000
 Tony Romo               |  9000000
 Julius Peppers          |  8900000
 Anthony Spencer         |  8800000
 Karlos Dansby           |  8800000
 Jordan Gross            |  8500000
 Tyson Jackson           |  8005000
 Adrian Peterson         |  8000000
 Champ Bailey            |  8000000
 Aaron Rodgers           |  8000000
 Chris Johnson           |  8000000
 Jason Peters            |  7900000
 Santonio Holmes         |  7750000
 Eric Wright             |  7750000
 Steve Smith             |  7750000
 Jay Cutler              |  7700000
 Matt Forte              |  7700000
 Ray Rice                |  7700000
 Brian Urlacher          |  7500000
 Johnathan Joseph        |  7250000
 Gary Brackett           |  7200000
 Ed Reed                 |  7200000
(50 rows) 

7.
nfl=# select avg(salary) from players;
         avg
----------------------
 1579692.539817232376
(1 row)

8.
nfl=# select name, position, salary from players where salary > '10000000';
          name           | position |  salary
-------------------------+----------+----------
 Jake Long               | T        | 11200000
 Joe Thomas              | T        | 10500000
 Dwight Freeney          | DE       | 14035000
 Peyton Manning (buyout) | QB       | 10400000
 Peyton Manning          | QB       | 18000000
 Elvis Dumervil          | DE       | 14000000
 Tamba Hali              | DE       | 11250000
 Philip Rivers           | QB       | 10200000
 Michael Vick            | QB       | 12500000
 Nnamdi Asomugha         | CB       | 11000000
 Trent Williams          | T        | 11000000
 Matthew Stafford        | QB       | 11500000
 Cliff Avril             | DE       | 10600000
 Jared Allen             | DE       | 11619850
 Matt Ryan               | QB       | 11500000
 Brent Grimes            | CB       | 10431000
 Drew Brees              | QB       | 15760000
 Vincent Jackson         | WR       | 11000000
 Calais Campbell         | DE       | 10600000
 Sam Bradford            | QB       | 12000000
 Chris Long              | DE       | 10310000
(21 rows)



