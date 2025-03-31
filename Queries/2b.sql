-- 2b) How many orders were made within this date range? How many items were ordered within this date range?

select
	count(distinct order_id) as order_count,
    count(item_id) as item_count
from
	order_details