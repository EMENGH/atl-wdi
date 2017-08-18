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



