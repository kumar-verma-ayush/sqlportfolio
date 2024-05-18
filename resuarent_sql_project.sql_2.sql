-- combine the menu_items and order_details tables into a single table.
select * from order_details join menu_items;
select * from order_details od left join  menu_items mi on od.item_id=mi.ï»¿menu_item_id;
-- what were the least and most ordered items? what categories were they in.
select item_name,count(ï»¿order_details_id) as num_purches from order_details od left join  menu_items mi on od.item_id=mi.ï»¿menu_item_id group by item_name order by num_purches desc;
-- what were the top 5 orders that spent the most money?
select order_id,sum(price) as total_price from order_details od left join  menu_items mi on od.item_id=mi.ï»¿menu_item_id group by order_id order by total_price desc limit 5;

-- View the details of the highest spend order. what insights can you gather from the results? 
select category,count(item_id) as num_items from order_details od left join  menu_items mi on od.item_id=mi.ï»¿menu_item_id where order_id=440 group by category;

-- View the details of the top 5 highest spend orders. what insights can you gather from the
select category,count(item_id) as num_items from order_details od left join  menu_items mi on od.item_id=mi.ï»¿menu_item_id 
where order_id in (440,2075,1957,330,2675) group by category ;
