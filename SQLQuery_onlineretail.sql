use sales
select*from Online_Retail

delete from Online_Retail
where CustomerID is null 




-- Q1. What is the date between where total data have?  
select max(InvoiceDate) as max_date from Online_Retail

select min(InvoiceDate) as min_date from Online_Retail
-- so we have data between 01-12-2010 to 09-12-2011 






-- Q2.  (i)How Many Customer in this table
select count(distinct(CustomerID)) from Online_Retail  --Total 4372 in this table

--		(ii)How Many country in this table
select count(distinct(Country)) from Online_Retail		-- Total 37 country in this table 






-- Q3. (i)Top 3 months for higest sales?
select top 3 Year(InvoiceDate) as year,MONTH(InvoiceDate) as month,sum(UnitPrice) as total_sales 
from Online_Retail group by Year(InvoiceDate),MONTH(InvoiceDate) order by total_sales desc
/* So after see the result we find top 3 month :
						1. month 11/2011 where total sales = 195298.518818825
						2. month 10/2011 where total sales = 186582.999311917	
						3. month 09/2011 where total sales = 129301.449445553
*/

-- (ii) Find top 3 customer for highest sales?
select top 3 CustomerID,sum(UnitPrice) total_spend from Online_Retail
group by CustomerID order by total_spend desc
/* So after see the result we find top 3 customer:
						1. CustomerId = 14096 , Total_Spend = 41376.3299628794
						2. CustomerId = 15098 , Total_Spend = 40278.8999996185
						3. CustomerId = 14911 , Total_Spend = 31060.6600694656
*/

-- (iii)Find top 3 country for highest sales?
select top 3 Country,sum(UnitPrice) total_sales from Online_Retail
group by Country order by total_sales desc
/* So after see the result we find top 3 country:
						1. Country = United Kingdom , Total_sales = 1178277.25649832
						2. Country = France , Total_Sales = 42871.2401471324
						3. Country = EIRE , Total_Sales = 38253.5800894275
*/






--Q4. Find Top 2 Customer who purchaged highest number of items in jan 2011 ?
select top 2 CustomerID , sum(Quantity) total_qnt from Online_Retail
where '2011-01-01' < InvoiceDate and InvoiceDate < '2011-01-31'
group by CustomerID  order by total_qnt desc 
/* So after see the result we find top 2 customer:
						1. CutomerID = 14646 , Total_item_purchage = 20300
						2. CustomerID = 15749 , Total_item_purchage = 9014						
*/






--Q5. Find Highest number of items sale in dec 2011 ?
select top 1 Country , sum(Quantity) total_qnt from Online_Retail
where year(InvoiceDate)='2011' and month(InvoiceDate)='12'
group by Country  order by total_qnt desc 
/* So after see the result we find a country:
						1. country = United Kingdom , Total_item_purchage = 177584
												
*/






--Q6. Show the items description(Product name) which sale in between 01-02-2011 and 10-02-2011 
select distinct(Description)  from Online_Retail 
where  InvoiceDate between '2011-02-01' and  '2011-02-10'
----- Total 1526 diffrent product sale in between these date ------- 





--Q7. Show the CustomerID and country name which spend highest money in june 2011?
select  top 1 CustomerID,Country,sum(UnitPrice) total_spend from Online_Retail 
where year(InvoiceDate)='2011' and month(InvoiceDate)='06' 
group by CustomerID,Country  order by total_spend desc
/* So after see the result we find a customer name and country:
						1. CutomerID = 15098 , country = United Kingdom , Total_spend = 40278.8999996185
						
*/







--Q8. find the total number of item sale in france in nov 2011?
select  top 1 Country, count(UnitPrice) total_spend from Online_Retail
 where year(InvoiceDate)='2011' and month(InvoiceDate)='09' 
 group by Country  order by total_spend desc






--Q9. Which country spend Lowest money in dec 2011?
select top 1 Country, sum(UnitPrice) total_spend from Online_Retail where YEAR(InvoiceDate)='2011'
group by Country order by total_spend
/* After see the result we find the min spend country name :
				1. Country = Saudi Arabia, Total_spend = 24.1099999248981
*/






--Q10. Top 5 product which purchaged highest no of times in the table?
select Description,COUNT(Quantity) Total_Quantity_sale from Online_Retail
group by Description order by Total_Quantity_Sale desc
/* After see the result we find total 3885 products in this table :
following top 5 which purchaged highest time are here:

	Item Name				       Total_Quantity_Sale
	1. WHITE HANGING HEART T-LIGHT HOLDER		2070
	2. REGENCY CAKESTAND 3 TIER			1905
	3. JUMBO BAG RED RETROSPOT			1662
	4. ASSORTED COLOUR BIRD ORNAMENT		1418
	5. PARTY BUNTING				1416

*/
