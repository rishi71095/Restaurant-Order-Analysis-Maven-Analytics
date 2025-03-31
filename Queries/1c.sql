-- 1c) How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?

select
	count(menu_item_id) as italian_dish_count,
    min(price) as least_expensive,
    max(price) as most_expensive
from
	menu_items
where
	category = 'Italian'