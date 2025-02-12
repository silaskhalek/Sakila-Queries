# Encontrar o filme mais alugado
select f.title, count(r.rental_id) as total_alugueis
from film f 
join inventory i on f.film_id = i.film_id
join rental r on i.inventory_id = r.inventory_id
group by f.film_id
order by total_alugueis desc
limit 3;