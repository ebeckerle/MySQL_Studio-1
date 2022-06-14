select director_id AS director_code
from movies;

select title
from movies
where director_id in (select director_id
from directors
where first_name="Peter" and last_name="Jackson");

alter table movies
add amount_earned INTEGER;

select title
from movies;

update movies
set amount_earned=70467623
where title="The Incredibles";

update movies
set amount_earned=29140617
where title="Toy Story";

update movies
set amount_earned=93000000
where title="Money Monster";

update movies
set amount_earned=33258052
where title="A Bug's Life";

select *
from movies;

select *
from movies
order by amount_earned asc;

select *
from movies
where amount_earned > 100;