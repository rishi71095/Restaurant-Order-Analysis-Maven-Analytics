-- 1d) How many dishes are in each category? What is the average dish price within each category?

select
	category,
    count(menu_item_id) as category_count,
    round(avg(price), 2) as avg_price
from
	menu_items
group by
	category
order by
	category