-- 3a) Combine the menu_items and order_details tables into a single table

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
-- there are nulls in item_ids, so choose if you want to remove them here or not
where
	o.item_id is not null
        
        
        

