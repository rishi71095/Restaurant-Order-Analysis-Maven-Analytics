-- 2a) View the order_details table. What is the date range of the table?

select
	min(order_date) as min_date,
    max(order_date) as max_date
from
	order_details