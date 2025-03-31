-- 3b) What were the least and most ordered items? What categories were they in?


-- First way

with item_counts as (
		select
			item_id,
			count(item_id) as item_count
		from 
			order_details
		where
			item_id is not null
		group by
			item_id
),

min_max_count_items as (
		select *
		from item_counts
		where item_count = (select max(item_count) from item_counts)
        
		union
		
        select *
		from item_counts
		where item_count = (select min(item_count) from item_counts)
)

select
    b.category,
    b.item_name,
	a.item_id,
    a.item_count
from 
	min_max_count_items a
left join
	menu_items b
	on a.item_id = b.menu_item_id
    
-- Second way

-- with item_counts as (
-- 		select
-- 			item_id,
-- 			count(item_id) as item_count,
-- 			rank() over(order by count(item_id) asc) as min_rank,
-- 			rank() over(order by count(item_id) desc) as max_rank
-- 		from 
-- 			order_details
-- 		where
-- 			item_id is not null
-- 		group by
-- 			item_id
-- )

-- select
-- 	b.category,
-- 	a.item_id,
--     a.item_count
-- from
-- 	item_counts a
-- left join
-- 	menu_items b
-- 		on a.item_id =b.menu_item_id
-- where 
-- 	min_rank = 1 
--     or max_rank = 1
-- order by
-- 	b.category

