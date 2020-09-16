-------------------- Simple Analyzing Business Data in SQL------------------
select Region , round(sum(Profit),2) as Profit from Dim_Customer as DS
inner join FactSales as FS
on Ds.Customer_Id=FS.Sales_CustomerId
Group by Region
order by Profit desc
---------------------------------------------------------------------------
select Region , round(sum(sales),2) as [Sales by Region],
(select round(sum(sales),2) from FactSales ) as [Total Sales]
from Dim_Customer as DS
inner join FactSales as FS
on Ds.Customer_Id=FS.Sales_CustomerId
Group by Region
order by [Sales by Region] desc
---------------------------------------------------------------------
select Region , round(sum(Quantity),2) as [Quantity by Region],
(select round(sum(Quantity),2) from FactSales ) as [Total Quantity]
from Dim_Customer as DS
inner join FactSales as FS
on Ds.Customer_Id=FS.Sales_CustomerId
Group by Region
order by [Quantity by Region] desc
--------------------------------------------------------------------------
select  YEAR(Order_Date) as [Year] ,sum(sales) [Sales By Year] from Dim_Order DO
inner join FactSales FS
on Do.Order_Id=FS.Sales_OrderId
group by  YEAR(Order_Date)
order by [Year]
------------------------------------------------------------------------------