-- 2d) How many orders had more than 12 items?

with mycte as (
		select
			order_id,
			count(item_id) as item_count
		from
			order_details
		group by
			order_id
)
select
	count(order_id) as mycount
from
	mycte
where
	item_count > 12