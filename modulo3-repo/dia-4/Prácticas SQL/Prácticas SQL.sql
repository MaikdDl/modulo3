-- insert into actor (first_name, last_name)
-- values ('Javier', 'Bardem');

-- update actor set
-- first_name='Guillermo',
-- last_name='Toledo'
-- where actor_id=202;

-- delete from actor
-- where actor_id>=203;

-- insert into `sakila`.`film`
-- (`title`,
-- `description`,
-- `release_year`,
-- `language_id`,
-- `original_language_id`,
-- `rental_duration`,
-- `rental_rate`,
-- `length`,
-- `replacement_cost`,
-- `rating`,
-- `special_features`)
-- values ('Amanece, que no es poco',
-- 'Humor absurdo',
-- 1989,
-- 1,
-- 3,
-- 5,
-- 2.12,
-- 110,
-- 100,
-- 'NC-17',
-- 'Commentaries,Deleted Scenes');

-- insert into film_actor(film_id, actor_id)
-- values(1001,201),(1001, 202),(1001, 91)

-- insert into film_category (film_id, category_id)
-- values (1001, 5), (1001, 4);

-- select film_id as FID, title as Título, release_year as 'Año Creación', rental_rate as 'Precio alquiler'
-- from film
-- where 
-- film_id<500
-- or
-- rental_rate<1
-- and
-- language_id=4;


-- select release_year as 'Año Creación', count(*) from film
-- group by release_year;
-- 
-- select distinct release_year from film;

-- select f.title as Título, l.name as Idioma, f.language_id, l2.name as Original
-- from film as f
-- inner join `language` as l on f.language_id=l.language_id
-- inner join `language` as l2 on f.original_language_id=l2.language_id;


-- select f.title as Título, l.name as Idioma, f.language_id,coalesce(l2.name, l.name) as Original
-- from film as f
-- inner join `language` as l on f.language_id=l.language_id
-- left join `language` as l2 on f.original_language_id=l2.language_id;

-- select *
-- from film as f
-- inner join film_actor as fa on f.film_id=fa.film_id
-- inner join actor as a on a.actor_id=fa.actor_id;


-- select title, count(*) as 'Cantidad Actores'
-- from film as f
-- inner join film_actor as fa on f.film_id=fa.film_id
-- inner join actor as a on a.actor_id=fa.actor_id
-- group by title
-- having count(*)>6
-- order by 'Cantidad Actores', title;


-- select release_year, avg(length)
-- from film
-- group by release_year;


select f.title as Título, c.name as Categoría
from film as f
inner join film_category as fc on f.film_id=fc.film_id
inner join category as c on fc.category_id=c.category_id;