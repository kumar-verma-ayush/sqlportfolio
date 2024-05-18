-- view the order_details table. 
select * from order_details;

-- what is the date range of the table;
select min(order_date),max(order_date) from order_details;

-- how many orders were made within this date range. 
select count(distinct(order_id)) as count_orders from order_details;

-- how many items were ordered within this date range.
select count(*) from order_details;

-- which orders had the most number of items. 
select order_id,count(item_id) from order_details group by order_id;

-- how many orders had more than  items. 
select order_id,count(item_id) as num_items from order_details group by order_id having num_items>12;