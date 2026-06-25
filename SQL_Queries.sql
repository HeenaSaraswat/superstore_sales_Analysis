create database if not exists store_database;
use store_database;
create table superstore(
Year int,
Month int,
Order_Date date,
Ship_Date date,
Ship_mode Varchar(20),
Segment varchar(20),
City Varchar(20),
State varchar(20),
Region Varchar(20),
Category varchar(20),
Sub_Category varchar(20),
Product_name varchar(30),
Sales decimal(10,2),
Quantity int,
Discount decimal(10,2),
Profit decimal(10,2)
);
-- top 10 products by sales
select Product_Name , sum(sales) as total_sales from superstore 
group by Product_Name
order by Total_sales desc limit 10;

-- top 10 products by sales
select Product_Name , sum(profit) as total_profit from superstore 
group by Product_Name
order by Total_profit desc limit 10;

--  products which causing loose
select product_name , sum(profit) as Total_profit from superstore
group by product_name 
having total_profit < 0
order by Total_profit asc ;

-- total sales amount
select  sum(sales) as Total_sales from superstore ;
select * from superstore limit 5 ;

-- which year had highest sales
select ï»¿Year , sum(sales)  as total_sales from superstore 
group by ï»¿Year order by total_sales limit 1 ;

-- which month had highest sales
select month , sum(sales) as total_sales from superstore 
group  by month
order by total_sales desc limit 1;

-- what is total profit 
select sum(profit) from superstore ;
 
 -- which category generate the max profit
 select Category , sum(profit) as total_profit from superstore
 group by Category 
 order by total_profit desc limit 1;
 
 -- which sub-category causing loose 
 select Sub_Category , sum(profit) as total_profit from superstore
 group by sub_category 
 having total_profit < 0 
 order by total_profit asc;
 
 -- which region have the highest sale
 select region , sum(sales) as Total_sales from superstore
 group by region 
 order by total_sales desc ;
 
 -- which state have the highest sale
 select state , sum(sales) as Total_sales from superstore
 group by state 
 order by total_sales desc ;
 
 select city , sum(sales) as Total_sales from superstore
 group by city 
 order by total_sales desc ;
 
 -- which state have the highest profit
 select state , sum(profit) as Total_profit from superstore
 group by state 
 order by total_profit desc limit 5  ;
 
 -- average discount by category
 select category , avg(discount) as avg_dis from superstore 
 group by category ;
 
 -- profit by region
 select region, sum(profit) as total_profit from superstore
 group by region
 order by total_profit desc;
 
 
 
 
 

