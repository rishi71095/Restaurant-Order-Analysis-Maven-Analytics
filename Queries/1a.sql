-- 1a) View the menu_items table and write a query to find the number of items on the menu

select
	count(menu_item_id) as count_menu_items
from
	menu_items