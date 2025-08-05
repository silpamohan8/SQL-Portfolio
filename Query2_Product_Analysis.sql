/* find the weight of the lightest mountain bike */

select  min(p.Weight) as minimumWeight
from AdventureWorks2022.SalesLT.ProductCategory  pc
inner join AdventureWorks2022.SalesLT.Product p 
on pc.ProductCategoryID=p.ProductCategoryID 
where pc.name = 'Mountain Bikes'

/* Find cost price, selling price, profit made on different "Wheel" category items */

select  p.name, p.StandardCost, p.ListPrice, (p.ListPrice - p.StandardCost) as Profit
from AdventureWorks2022.SalesLT.ProductCategory  pc
inner join AdventureWorks2022.SalesLT.Product p 
on pc.ProductCategoryID=p.ProductCategoryID 
where pc.name = 'Wheels'

/* find all products and their details for which the list price is 50-100$ */

select *
from [AdventureWorks2022].[SalesLT].[Product]
where ListPrice between 50 and 100

/* find me product numbers, names and weight of all mountain bikes */

select  p.name, p.ProductNumber, p.Weight
from AdventureWorks2022.SalesLT.ProductCategory  pc
inner join AdventureWorks2022.SalesLT.Product p 
on pc.ProductCategoryID=p.ProductCategoryID 
where pc.name = 'Mountain Bikes'