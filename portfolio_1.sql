create database portfolio;
use portfolio;
select * from dataset1;
select * from  dataset2;  
-- numbers of rows into our dataset --
select count(*) as numbes_or_rows from dataset1;
select count(*) as numbes_or_rows from dataset2;
-- calculate data fram dataset for jharkhand and bihar -- 
select * from dataset1 where state in ("Jharkhand","Bihar");
select * from dataset2 where state="Bihar";
-- caculate the population of india --
select sum(Population) as poulation_of_india from dataset2;
-- Avg growth % --
select avg(Growth)*100 as Avg_growth from dataset1;
-- Avg growth % of state --
select state,avg(growth)*100 as Avg_growth from dataset1 group by state;
-- avg sex ratio--
select avg(Sex_Ratio) as avg_sex_ratio from dataset1;
-- Avg sex ratio % of state --
select state, round(avg(Sex_Ratio),0) as avg_sex_ratio from dataset1 group by state order by avg_sex_ratio desc;
-- avg literacy rate --
select avg(literacy) as avg_literacy from dataset1;
-- Avg literacy % of state --
select state, round(avg(literacy),0) as avg_literacy from dataset1 group by state order by avg_literacy desc;
select state, round(avg(literacy),0) as avg_literacy from dataset1 group by state having avg_literacy>90 order by avg_literacy desc;
-- top 3 state growth rate --
select state,avg(Growth)*100 as avg_growth  from dataset1 group by state order by avg_growth desc limit 3;
-- bottom 3 state showing lowest sex ratio --
select state,avg(sex_ratio)*100 as avg_sex_ratio  from dataset1 group by state order by avg_sex_ratio asc limit 3;
-- top and bottom 3 state in literacy state --
select * from dataset1;
(select state,avg(literacy) as avg_literacy from dataset1 group by state order by avg_literacy desc limit 3)
union
(select state,avg(literacy) as avg_literacy from dataset1 group by state order by avg_literacy asc limit 3);

select * from(
select state,avg(literacy) as avg_literacy from dataset1 group by state order by avg_literacy desc limit 3) a
union
select * from (
select state,avg(literacy) as avg_literacy from dataset1 group by state order by avg_literacy asc limit 3) b;

-- states starting with letters wiyhb a --
select distinct(state) from dataset1 where state  like "A%" or "B%";
select state from dataset2 where state  like "A%"; 