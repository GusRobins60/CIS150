INSERT INTO Movie (id,name,year,rating,runtime,genre,earnings_rank)
VALUES(4846340, 'Hiden Figures', 2016, 'PG', 127, 'BDH', NULL);
INSERT INTO Actor(actor_id, movie_id)
VALUES(0378245,4846340);
INSERT INTO Actor(actor_id, movie_id)
VALUES(1847117,4846340);
INSERT INTO Actor(actor_id, movie_id)
VALUES(0818055,4846340);


SELECT rating, runtime, earnings_rank FROM Movie WHERE id=3606756;


SELECT name, dob, pob FROM Person WHERE name LIKE 'M%McCarthy' OR name LIKE 'Lady%';


SELECT name FROM Movie WHERE rating='G' AND year >= 2000;


SELECT AVG(earnings_rank) FROM Movie WHERE rating='G';


SELECT year, COUNT(year) FROM oscar GROUP BY year, year HAVING COUNT(year)<>6;


SELECT name, min(runtime) FROM Movie WHERE name LIKE 'Star Wars%';



