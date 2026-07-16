select * from dimcustomer
select * from dimdate
select * from dimproduct
select * from dimproductcategory
select * from dimproductsubcategory
select * from dimstore
select * from factsales





select sum(sales) as total_sales
from factsales


select sum(profit) as total_profit
from factsales


select count(salesid) as total_order
from factsales


select count(distinct customerid) as total_customer
from factsales


select count(distinct storeid) as stores
from factsales

select sum(quantity) as total_quantity
from factsales

select avg(sales) as avg_sales
from factsales


select max(sales) as max_sales
from factsales

select min(sales) as min_sales
from factsales

select avg(profitmarginpercent) as avg_profit_margin
from factsales



select d.year, sum(f.sales) as total_sales
from dimdate d
join
factsales f
on d.datekey=f.datekey
group by d.year
order by d.year

select d.year, sum(f.profit) as total_profit
from dimdate d
join
factsales f
on d.datekey=f.datekey
group by d.year
order by d.year


select pc.productcategoryname, sum(f.sales) as total_sales
from factsales f
join dimproduct p
on f.productid = p.productid
join dimproductsubcategory ps
on p.productsubcategoryid = ps.productsubcategoryid
join dimproductcategory pc
on ps.productcategoryid = pc.productcategoryid
group by pc.productcategoryname
order by total_sales desc


select pc.productcategoryname, sum(f.profit) as total_profit
from factsales f
join dimproduct p
on f.productid = p.productid
join dimproductsubcategory ps
on p.productsubcategoryid = ps.productsubcategoryid
join dimproductcategory pc
on ps.productcategoryid = pc.productcategoryid
group by pc.productcategoryname
order by total_profit desc;



select p.productname, sum(f.sales) as total_sales
from dimproduct p
join
factsales f
on p.productid=f.productid
group by p.productname
order by total_sales desc
limit 10

select p.productname, sum(f.profit) as total_profit
from dimproduct p
join
factsales f
on p.productid=f.productid
group by p.productname
order by total_profit
limit 10

select c.fullname, sum(f.sales) as total_sales
from dimcustomer c
join
factsales f
on c.customerid=f.customerid
group by c.fullname
order by total_sales desc
limit 10


select c.fullname, sum(f.profit) as total_profit
from dimcustomer c
join
factsales f
on c.customerid=f.customerid
group by c.fullname
order by total_profit desc
limit 10


select c.customersegment, sum(f.sales) as total_sales
from dimcustomer c
join
factsales f
on f.customerid=f.customerid
group by c.customersegment
order by total_sales desc
limit 10



select c.customersegment, sum(f.profit) as total_profit
from dimcustomer c
join
factsales f
on f.customerid=f.customerid
group by c.customersegment
order by total_profit desc
limit 10



select s.storename, sum(f.sales) as total_sales
from dimstore s
join
factsales f
on s.storeid=f.storeid
group by storename
order by total_sales desc


select s.storename, sum(f.profit) as total_profit
from dimstore s
join
factsales f
on s.storeid=f.storeid
group by storename
order by total_profit desc


select c.state, sum(f.sales) as total_sales
from dimcustomer c
join factsales f
on c.customerid=f.customerid
group by c.state
order by total_sales desc


select c.state, sum(f.profit) as total_profit
from dimcustomer c
join factsales f
on c.customerid=f.customerid
group by c.state
order by total_profit desc


select paymentmethod, sum(sales) as total_sales
from factsales
group by paymentmethod
order by total_sales



select paymentmethod, sum(profit) as total_profit
from factsales
group by paymentmethod
order by total_profit


select orderstatus, sum(sales) as total_sales
from factsales
group by orderstatus
order by total_sales desc

select orderstatus, sum(profit) as total_profit
from factsales
group by orderstatus
order by total_profit desc


select pc.productcategoryname, avg(f.discountpercent) as avg_discount
from factsales f
join dimproduct p
on f.productid = p.productid
join dimproductsubcategory ps
on p.productsubcategoryid = ps.productsubcategoryid
join dimproductcategory pc
on ps.productcategoryid = pc.productcategoryid
group by pc.productcategoryname
order by avg_discount desc



select pc.productcategoryname, avg(f.profitmarginpercent) as avg_profit_margin
from factsales f
join dimproduct p
on f.productid = p.productid
join dimproductsubcategory ps
on p.productsubcategoryid = ps.productsubcategoryid
join dimproductcategory pc
on ps.productcategoryid = pc.productcategoryid
group by pc.productcategoryname
order by avg_profit_margin desc


select d.year, sum(f.sales) as total_sales
from factsales f
join
dimdate d
on d.datekey=f.datekey
group by d.year
order by d.year


select d.year, sum(f.profit) as total_profit
from factsales f
join
dimdate d
on d.datekey=f.datekey
group by d.year
order by d.year

select d.month, sum(f.sales) as total_sales
from factsales f
join
dimdate d
on d.datekey=f.datekey
group by d.month
order by d.month


select d.month, sum(f.profit) as total_profit
from factsales f
join
dimdate d
on d.datekey=f.datekey
group by d.month
order by d.month



select p.productname, sum(f.profit) as total_profit
from dimproduct p
join
factsales f
on p.productid=f.productid
group by productname
order by total_profit desc 
limit 5


select p.productname, sum(f.profit) as total_profit
from dimproduct p
join
factsales f
on p.productid=f.productid
group by productname
order by total_profit 
limit 5



select s.storename, sum(f.sales) as total_sales
from dimstore s
join
factsales f
on s.storeid=f.storeid
group by s.storename
order by total_sales desc
limit 5



select s.storename, sum(f.profit) as total_profit
from dimstore s
join
factsales f
on s.storeid=f.storeid
group by s.storename
order by total_profit desc
limit 5


select c.state, sum(f.sales) as total_sales
from dimcustomer c
join
factsales f
on c.customerid=f.customerid
group by c.state
order by total_sales


select c.state, sum(f.profit) as total_profit
from dimcustomer c
join
factsales f
on c.customerid=f.customerid
group by c.state
order by total_profit