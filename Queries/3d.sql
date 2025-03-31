-- 3d) View the details of the highest spend order. Which specific items were purchased?

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
),

my_order_id as (
		select
			order_id,
			sum(price) as order_revenue
		from 
			full_table
		group by
			order_id
		order by
			order_revenue desc
		limit 1
)

select
    order_id,
    group_concat(distinct item_id separator ', ') as item_ids,
    group_concat(distinct item_name separator ', ') as item_names
from 
	full_table
where
	order_id = (select order_id from my_order_id)
group by
    order_id
order by
	order_id
