select title
from movies;

select title, year_released
from movies
order by year_released desc;

select *
from directors
order by country asc;

select *
from directors
order by country asc, last_name asc;

INSERT INTO directors (first_name, last_name, country)
values ("Rob", "Reiner", "USA");

select *
from directors
where last_name="Reiner";

INSERT INTO movies (title, year_released, director_id)
values ("The Princess Bride", 1987, 11);

select title, year_released, last_name
from movies
inner join directors on movies.director_id = directors.director_id;

select title, first_name, last_name
from movies
inner join directors on movies.director_id = directors.director_id
order by last_name asc;


select first_name, last_name
from movies, directors
where title="The Incredibles" AND movies.director_id=directors.director_id;

select director_id
from movies
where title="The Incredibles";

select first_name, last_name
from directors
where director_id in (select director_id
from movies
where title="The Incredibles");

select last_name, country
from directors
inner join movies on directors.director_id=movies.director_id and movies.title="Roma";

delete from movies
where title="Selma";

select *
from movies, directors;

delete from directors
where first_name="Peter" and last_name="Jackson";

