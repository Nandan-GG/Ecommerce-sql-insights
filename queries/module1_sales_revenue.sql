-- Q1: Total Revenue Across All Time

SELECT SUM(i.quantity * p.price) AS total_revenue
FROM products p
JOIN order_items i ON p.product_id = i.product_id;



-- Q2: Monthly Sales Trend

select date_format(o.order_date, '%Y-%m') as month_trend,sum(p.price*i.quantity) as total_revenue
from products p 
inner join order_items i 
on p.product_id = i.product_id
inner join orders o 
on o.order_id=i.order_id
group by month_trend 
order by month_trend;

-- Q3: Top 5 Products by Revenue
select p.product_name,sum(i.quantity*p.price) as total_revenue
from products p
inner join order_items i
on p.product_id= i.product_id
group by p.product_id
order by total_revenue desc
limit 5;


-- Q4: Top 3 countries by customer spend
select c.country,sum(p.price*i.quantity) as total_revenue
from customers c 
inner join orders o 
on c.customer_id=o.customer_id
inner join order_items i 
on o.order_id=i.order_id
inner join products p 
on p.product_id=i.product_id
group by c.country
order by total_revenue desc
limit 4;

-- Q5: Number of Repeat Customers

select count(*) as repeated_cust
from
(select c.customer_id,count(o.order_id) as orders
from customers c 
inner join orders o 
on c.customer_id=o.customer_id
group by c.customer_id
having count(o.order_id) >1 ) as a;

-- Q6: Average Order Value per Customer
select customer_id,avg(tot_revenue) as avg_value
from 
(select c.customer_id,o.order_id,sum(p.price*i.quantity) as tot_revenue
from customers c 
inner join orders o 
on c.customer_id=o.customer_id
inner join order_items i 
on o.order_id=i.order_id
inner join products p 
on p.product_id=i.product_id
group by c.customer_id,o.order_id) a
group by customer_id;
