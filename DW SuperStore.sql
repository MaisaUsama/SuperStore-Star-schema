
-------------------------------------------Modeling Data Mart--------------------------
------------------------------------Create Dim Customer--------------------------------
create table Dim_Customer(
Customer_Id varchar(100) not null,
Customer_Name varchar(100) not null,
Region varchar(100),
Segment varchar(100) ,
Country varchar(100) ,
City varchar(100) ,
C_State varchar(100) ,
Person varchar(100) ,
constraint Customer_Id_PK Primary Key (Customer_Id)
);
go
alter table dbo.Dim_Customer add  Postal_Code Float
select count(*) from dbo.Dim_Customer
-----------------------------------------------------------------------------------------
---------------------Create Dim Product--------------------------------------------------
create table Dim_Product(
Product_id varchar(100) not null,
Product_Name varchar(100) not null,
Category Varchar(100),
Sub_Category Varchar(100),
constraint Product_id_PK primary key(Product_id)
)
select count(*) from Dim_Product
--------------------------------------------------------------------------------------------
---------------------------Create Dim_order-------------------------------------------------
create table Dim_Order(
Order_Id varchar(100) not null,
Order_Date Date ,
Ship_Date Date,
Ship_Mode varchar(100),
Returned Varchar(20)
constraint Order_Id_PK primary key (Order_Id)
)
select count(*) from Dim_Order
-------------------------------------------Create Fact Table-------------------------------------
create table FactSales(
Id real,
Sales money,
Profit money,
Discount money,
Quantity int,
Sales_OrderId varchar(100) ,
Sales_CustomerId varchar(100),
Sales_ProductId varchar(100) ,
constraint FK_orderId foreign Key(Sales_OrderId)
 references Dim_Order(Order_Id),
 Constraint FK_CustomerId foreign key (Sales_CustomerId) 
 references Dim_Customer(Customer_Id ),
 constraint FK_ProductId foreign key(Sales_ProductId)
	 references Dim_Product(Product_id)

)

select count(*) from FactSales
select count(*) from dbo.[OLE DB Destination6]
---------------------Create Dim Product--------------------------------------------------
create table Dim_Product0(
Product_id varchar(100) not null,
Product_Name varchar(100) not null,
Category Varchar(100),
Sub_Category Varchar(100),
constraint Product_id_PK0 primary key(Product_id)
)
select count(*) from Dim_Product0

---------------------Create Dim Product--------------------------------------------------
create table Dim_Product1(
Product_id varchar(100) not null,
Product_Name varchar(100) ,
Category Varchar(100),
Sub_Category Varchar(100),
constraint Product_id_PK1 primary key(Product_id)
)
select count(*) from Dim_Product1
---------------------Create Dim Product--------------------------------------------------
create table Dim_Product2(
Product_id varchar(100) ,
Product_Name varchar(100) not null,
Category Varchar(100),
Sub_Category Varchar(100),
constraint Product_id_PK2 primary key(Product_id)
)
select count(*) from Dim_Product2
select count(*) from dbo.[OLE DB Destination6]
select count(*) from dbo.[Not]


drop  table dbo.FactSales
