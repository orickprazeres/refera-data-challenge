select f.title as título_do_filme,
		count(r) as quantidade
from  film f
	left join inventory i on i.film_id  = f.film_id 
	left join rental r on r.inventory_id = i.inventory_id
	group by f.film_id 
	order by 2 desc limit 2;
