drop table if exists iceberg.gbm.film_film_actor;

create table iceberg.gbm.film_film_actor as
select actor_id, count(1)  from iceberg.gbm.extr_film f
left join iceberg.gbm.extr_film_actor fa on f.film_id=fa.film_id 
group by (actor_id) order by 2 desc;
