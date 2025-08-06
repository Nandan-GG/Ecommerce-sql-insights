-- Q7: First-Time vs Repeat Buyers
select Buyer_type,count(*) as num_of_customers
from
(select customer_id,
case when count(*)=1 then 'first_time_customers'
else 'Repeated_customers' 
end as Buyer_type
from orders 
group by customer_id ) a
group by Buyer_type;

-- Q8 Country-wise Customer Distribution
select country,count(customer_id) as num_customers
from customers
group by country;

-- Q9 Customer Lifetime Value (CLTV)
select c.customer_id,sum(p.price*i.quantity) as tot_revenue
from customers c 
inner join orders o 
on c.customer_id=o.customer_id
inner join order_items i 
on o.order_id=i.order_id
inner join products p 
on p.product_id=i.product_id
group by c.customer_id
order by tot_revenue desc;

-- Q10: Churn Candidates
select customer_name as Churn_candidate
 from 
(select c.customer_name, max(o.order_date) as recent_order
from customers c 
inner join orders o 
on c.customer_id=o.customer_id 
group by c.customer_name ) as a
where recent_order < ( date_sub(current_date, interval 6 month));
