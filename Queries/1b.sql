-- 1b) What are the least and most expensive items on the menu?

select
	min(price) as least_expensive,
    max(price) as most_expensive
from
	menu_items