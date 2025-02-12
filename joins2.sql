# Listar o nome do cliente e o total que ele gastou em locações
select c.first_name, c.last_name, sum(p.amount) as total_gasto
from customer c 
join payment p on c.customer_id = p.customer_id
group by c.customer_id
order by total_gasto desc;