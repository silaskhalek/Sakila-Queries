# Listar os filmes que nunca foram alugados
select f.title from film f
left join inventory i on f.film_id = i.film_id
left join rental r on i.inventory_id = r.inventory_id
where r.rental_id is null;