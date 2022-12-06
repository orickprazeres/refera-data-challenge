select t.Nome_completo from (
select f.film_id, f.title, a.actor_id,
		concat(a.first_name, ' ', a.last_name)  as Nome_completo,
		count(r) as rental_count
from film f
	left join inventory i on i.film_id  = f.film_id 
	left join rental r on r.inventory_id = i.inventory_id
	left join film_actor fa on fa.film_id = f.film_id
	left join actor a on a.actor_id = fa.actor_id 
	group by f.film_id, a.actor_id
	order by 5 desc limit 16
)t
group by t.Nome_completo
order by count(t.Nome_completo) desc limit 1;


