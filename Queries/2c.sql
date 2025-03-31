-- 2c) Which orders had the most number of items?

with mycte as (
		select
			order_id,
			count(item_id) as item_count,
			dense_rank() over(order by count(item_id) desc) as my_rank
		from
			order_details
		group by
			order_id
)

select
	order_id,
    item_count
from
	mycte
where
	my_rank = 1