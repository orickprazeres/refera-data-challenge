select 	date_trunc('month', r.rental_date)::date as mês_entrada_cliente,
		count(customer_id) as quantidade_de_clientes
from rental r
group by 1 order by 2 desc limit 3;

