-- 3c) What were the top 5 orders that spent the most money?

with full_table as (
		select
			o.order_details_id,
			o.order_id,
			o.order_date,
			o.order_time,
			o.item_id,
			m.item_name,
			m.category,
			m.price
		from
			order_details o
		left join
			menu_items m
				on m.menu_item_id = o.item_id
		where
			o.item_id is not null
)

-- First way

select
	order_id,
    sum(price) as order_revenue
from 
	full_table
group by
	order_id
order by
	order_revenue desc
limit 5

-- we can rank the above (& below) results in case there are multiple order_ids which have the same order totals

-- Second way

-- select distinct
-- 	order_id,
--     sum(price) over(partition by order_id) as order_revenue
-- from 
-- 	full_table
-- order by
-- 	order_revenue desc
-- limit 5