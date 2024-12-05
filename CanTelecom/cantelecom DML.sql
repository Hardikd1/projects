-- Easy Level
-- Retrieve all active customers in a specific province (e.g., Ontario).

select 
	customers.first_name,
	customers.last_name,
	customers.province,
	subscriptions.subscription_status 
from 
	customers 
	join subscriptions on customers.customer_id = subscriptions.customer_id
where 
	subscriptions.subscription_status = 'Active'
	and customers.province = 'Ontario';
	

-- List all services offered by the company along with their monthly costs.

select service_name, monthly_cost
from  services 


-- Find the total number of customers who have subscribed to the 'Mobile Plus' service.

select count(customer_id)
from services
join subscriptions  on services.service_id = subscriptions.service_id
where services.service_name = 'Mobile Plus'; 


-- Intermediate Level
-- Calculate the average amount paid by customers per billing cycle.
select 
	customers.customer_id,
	customers.first_name,
	customers.last_name,
	avg( billing.amount_paid ) as amount_paid
from 
	customers
	join subscriptions on customers.customer_id = subscriptions.customer_id
	join billing on billing.subscription_id = subscriptions.subscription_id
group by 
	customers.customer_id,
	customers.first_name,
	customers.last_name;

-- Get a list of customers who have not made any payments in the last 3 months.

select 
	customers.customer_id,
	customers.first_name,
	customers.last_name,
	sum( billing.amount_paid )as total_amount_paid
from 
	billing 
	join subscriptions 
	on billing.subscription_id = subscriptions.subscription_id
	join customers 
	on customers.customer_id = subscriptions.customer_id 
where 
	billing.payment_date between '2025-07-18' and '2025-10-18' and billing.amount_paid <0
group by 
	customers.customer_id,
	customers.first_name,
	customers.last_name;


-- Find the top 10 cities with the highest number of customers.

select city,count(customer_id )
from customers
group by city 
order by count(customer_id ) desc 
limit 10;


-- Advanced Level
-- Identify customers who have raised more than 3 support tickets in the last year.

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(st.ticket_id) AS ticket_count
FROM
    customers c
    JOIN support_tickets st ON c.customer_id = st.customer_id
WHERE
    st.issue_date >= NOW() - INTERVAL '1 YEAR'
GROUP BY
    c.customer_id, c.first_name, c.last_name
HAVING
    COUNT(st.ticket_id) >= 3
ORDER BY
    customer_id, 
	ticket_count DESC;
   
-- Calculate the churn rate by finding the percentage of customers who have canceled all their subscriptions.
   
 

   
-- For each service, find the average data usage per customer in the last month.



-- Detect potential fraud by finding customers who have multiple subscriptions of the same service overlapping in time.
-- Calculate the lifetime value (LTV) of customers based on their total payments made.
-- Find the average resolution time for support tickets by issue type.

  
  
  
 -- Additional subquery practice
-- Easy Level
-- Retrieve the Emails of Customers with Active Subscriptions

   
	select my.subscription_status ,my.customer_id,my.email 
	from (  
	   select 
	   	 subscriptions.subscription_status as subscription_status,
	   	 customers.customer_id as customer_id,
	   	 customers.email as email
	   from 
	     customers 
	   join
	   	 subscriptions 
	   on 
	   	 customers.customer_id = subscriptions.customer_id
	   where subscription_status = 'Active'
	   ) as my;
	  

-- Find the email addresses of customers who have at least one active subscription.


	select my.subscription_status ,my.customer_id,my.email 
	from (  
	   select 
	   	 subscriptions.subscription_status as subscription_status,
	   	 customers.customer_id as customer_id,
	   	 customers.email as email
	   from 
	     customers 
	   join
	   	 subscriptions 
	   on 
	   	 customers.customer_id = subscriptions.customer_id
	   where subscription_status = 'Active'
	   ) as my;

-- List Services Subscribed to by a Specific Customer
	  
select my.id,concat(my.name,' ',my.surname) as Full_Name,my.subscribed_services,my.service_count from
	(   SELECT 
    		customers.customer_id as id,
    		trim (customers.first_name) as name,
    		trim(customers.last_name) as surname,
    		STRING_AGG(service_type,', ') AS subscribed_services,
    		COUNT(service_type) AS service_count
		FROM 
    		customers 
    	full outer join
	   	 subscriptions 
	   on 
	   	 customers.customer_id = subscriptions.customer_id
	   	group by 
	   		customers.customer_id,
    		customers.first_name,
    		customers.last_name
    	order by 
    		service_count desc 
)as my;





















