-- Q11: Best-Selling Category
select category
from
(select category,
       dense_rank()over(order by best_selling desc) as drank
from
(select p.category,sum(quantity) as best_selling
from products p 
inner join order_items i 
on p.product_id=i.product_id
group by p.category ) a ) b
where drank=1;

-- Q12: Products never sold
select p.product_id
from products p 
left join order_items i 
on p.product_id=i.product_id
where i.product_id is null;

-- Q13: Total quantity sold per product with rank in category
select product_id,category,
       dense_rank()over(partition by category order by tot_quantity desc) as drank
from
(select p.product_id,p.category,sum(i.quantity) as tot_quantity
from products p 
inner join order_items i 
on p.product_id=i.product_id
group by p.product_id,p.category ) a
order by category,drank 
