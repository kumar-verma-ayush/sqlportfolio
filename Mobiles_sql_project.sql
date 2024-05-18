create schema Mobile;
use	Mobile;
select * from mobiles;
-- 1 Check mobile features and price list.
ALTER TABLE mobiles RENAME COLUMN Phone_name TO Phone;
select Phone,price from mobiles;
-- 2 Find out the price of 5 most expensive phones.
select * from mobiles order by price desc limit 5;
-- 3 Find out the price of 5 most cheapest phones.
select * from mobiles order by price asc limit 5;
-- 4 List of top 5 samsung phones with price and all features.
select * from mobiles where Brands="Samsung" order by price desc limit 5;
-- 5 Must have android phone list then top 5 high price android phones.
select * from mobiles where Operating_System_Type="Android" order by price desc limit 5;
-- 6  Must have android phone list then top 5 lower price android phones.
select * from mobiles where Operating_System_Type="Android" order by price asc limit 5;
 -- 7 must have IOS phone list then top 5 High price IOS phones.
select * from mobiles where Operating_System_Type="ios" order by price desc limit 5;
-- 8 Must Have IOS phone list then top 5 lower price ios phones.
select * from mobiles where Operating_System_Type="ios" order by price asc limit 5;
-- 9 write a query whice phone support 5g and also top 5 phone with 5g support.--
select * from mobiles where 5G_Availability="Yes" order by price desc limit 5;
-- 10 Total price of all mobile is to be found with brand name--
select * from mobiles;
select sum(price) as sum_of_price,Brands from mobiles group by Brands ;
