create database Restaurant;
use Restaurant;
-- View the menu_items table. 
select * from menu_items;
-- Find the number of items on the menu. 
select count(*) as numbers_of_iteams from menu_items;
-- what are the least and most expensive items on the menu. 
select item_name from menu_items where price=(select min(price) from menu_items);
select * from menu_items order by price;
select * from menu_items order by price desc;
-- How many Italian dishes are on the menu. 
select count(*) as italian_dish from menu_items where category="Italian";

-- what are the least and most expensive Italian dishes on the menu. 
select item_name,price from menu_items where category="Italian" order by price;
select item_name,price from menu_items where category="Italian" order by price desc;

-- How many dishes are in each category. 
select count(item_name) as item_name,category from menu_items group by category;

-- what is the average dish price within each category.
select avg(price) as avg_price,category from menu_items group by category; 
select * from order_details;
