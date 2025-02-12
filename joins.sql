# Consultas com Join
# Listar o título do filme e o nome da categoria 
select f.title, c.name as category
from film f 
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id;

