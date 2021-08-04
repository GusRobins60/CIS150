SELECT Movie.name, Movie.year 
FROM Movie 
JOIN Actor 
ON Movie.id = Actor.movie_id 
JOIN Person 
ON Person.id = actor.actor_id 
WHERE Person.name Like 'Geena Davis';


SELECT MIN(runtime),AVG(runtime), MAX(runtime)
FROM Movie
WHERE rating ='R';


SELECT Oscar.type, Oscar.year, Movie.name
From Oscar
JOIN Person 
ON Person.id = Oscar.person_id
Join Movie
On Movie.id = Oscar.movie_id
WHERE Person.name LIKE 'Steven Spielberg';


SELECT pob, COUNT(pob)
FROM Person 
WHERE pob IS NOT NULL
GROUP BY pob, pob HAVING COUNT(pob) >=50; 


SELECT COUNT(Movie.id)
FROM Movie
EXCEPT
SELECT Oscar.Movie_id
FROM Oscar;

SELECT COUNT(director_id)
FROM Director
INNER JOIN Movie
ON Movie.id = Director.movie_id
WHERE Movie.rating = 'R';