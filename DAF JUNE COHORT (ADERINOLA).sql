

-----Question 1
select ProductID, Name, ProductNumber, Color, ListPrice, standardcost as Price
from Production.Product
where color !='null' 
And   color != 'red'
And   color != 'black'
And   color != 'white'
And   color != 'silver'
and listprice between 75 and 750
order by ListPrice Desc


------------ Question 2
Select*
from HumanResources.employee
where Gender= 'M'
And BirthDate between '1962' and '1970'
And HireDate > '2001'
Select*
from HumanResources.employee
where Gender= 'F'
And BirthDate between '1972' and '1975'
And HireDate between '2001' and  '2002'

---------Question 3
select Top(10) [ProductID], [Name], [color]
from Production.product 
where productnumber LIKE 'BK%'
order by StandardCost DESC 

---------Question 4
select Person.person.LastName, person.EmailAddress.EmailAddress
from person.Person
cross join
person.EmailAddress
where lastname like '____%'
and emailaddress like '____%'    

------Question 5
select ProductSubcategoryID
from production.Product
where DaysToManufacture >= 3

-------Question 6
select ProductID, Name, color, Listprice, 
(
Case when [ListPrice] <'200'
 then 'Low'
 when ListPrice between '201' and '750' then 'Mid'
 when ListPrice between '750' and '1250' then 'high'
 else 'higher'
 end
 ) PriceIndicator
 from Production.Product


-------Question 7
 select COUNT (distinct JobTitle)
 from HumanResources.Employee

------Question 8
select [BusinessEntityID], [JobTitle], [BirthDate],[HireDate], DATEDIFF(yy,[BirthDate], [HireDate]) as AgeAtHire
from HumanResources.Employee

-------Question 9

select BusinessentityID,  5+ DATEDIFF(yy,[HireDate], GETDATE()) Year
from HumanResources.Employee


-------Question 10
select HireDate,65-DATEDIFF(yy,[BirthDate], GETDATE()) as Years
from HumanResources.Employee

-----Question 11

select  Name, ProductNumber, listprice, Color,
case when Color = 'white' then  '*0.08'

else 'none'
end
from Production.Product

---------Question 12
select HumanResources.Employee.HireDate,HumanResources.Employee.JobTitle, Sales.SalesPerson.SalesQuota,HumanResources.Employee.SickLeaveHours,
Person.Person.LastName,Person.Person.FirstName,Person.StateProvince.CountryRegionCode
from HumanResources.Employee
cross join
 Person.Person
 cross join
 Person.StateProvince
 cross join
 sales.SalesPerson
where Jobtitle='sales Representative'

------Question 13
select Production.Product.Name  Productname, Person.Person.FirstName, Production.ProductCategory.Name Productcategoryname, 
Production.ProductSubcategory.Name Productsubcategoryname,Production.TransactionHistory.Quantity*Production.TransactionHistory.ActualCost as Revenue,
datepart(Month, Production.TransactionHistory.TransactionDate)as MonthofTransation, 
datepart(QUARTER, Production.TransactionHistory.TransactionDate) as QuarterofTransation,Sales.SalesTerritory.CountryRegionCode as Region
from Production.Product
cross join
Production.ProductCategory
cross join
Person.Person
cross join
Production.ProductSubcategory
cross join
Production.TransactionHistory
cross join
sales.SalesTerritory


-------Question 14
select DISTINCT sales.SalesOrderHeader.SalesOrderNumber as OrderNumber, sales.SalesOrderHeader.OrderDate orderdate,
sales.SalesOrderHeader.CustomerID, sales.SalesOrderHeader.SalesPersonID,Sales.SalesOrderDetail.OrderQty as amountofOrder,
Sales.SalesPerson.CommissionPct as commission
from Sales.SalesPerson
cross join
Sales.SalesOrderDetail
cross join
sales.SalesOrderHeader

----Question 15

select *
from production.Product




------Question 16
select Top 5 [ListPrice], [Color],[ProductID]
from production.Product
where color = 'red'
order by ListPrice Desc

select Top 5 [ListPrice], [Color],[ProductID]
from production.Product
where color ='black'
order by ListPrice Desc

select Top 5 [ListPrice], [Color],[ProductID]
from production.Product
where color = 'Silver'
order by ListPrice Desc

select Top 5 [ListPrice], [Color],[ProductID]
from production.Product
where color = 'white'
order by ListPrice Desc

select Top 5 [ListPrice], [Color],[ProductID]
from production.Product
where color = 'multi'
order by ListPrice Desc








