/*Find all addressline1 which has either 750 or 950 inside them.Include the city, and country region and customer address also. 
 Include name of customer, email address and phone.*/

 select 
ad.AddressLine1, 
ad.City, 
ad.CountryRegion,
c.FirstName,
c.LastName,
c.EmailAddress,
c.Phone
from SalesLT.Address as ad
inner join SalesLT.CustomerAddress cad 
on ad.AddressID=cad.AddressID
inner join AdventureWorks2022.saleslt.Customer c
on cad.CustomerID=c.CustomerID
where ad.AddressLine1 like '%750%' 
or ad.AddressLine1 like  '%950%'

/*
Find all addressline1 which has either 750 or 950 inside them.Include the city, and country region and customer address also. 
 Include name of customer, email address and phone and all addresses even if not associated with a customer.*/




select 
ad.AddressLine1, 
ad.City, 
ad.CountryRegion,
c.FirstName,
c.LastName,
c.EmailAddress,
c.Phone
from SalesLT.Address as ad
left join SalesLT.CustomerAddress cad 
on ad.AddressID=cad.AddressID
left join saleslt.Customer c
on cad.CustomerID=c.CustomerID
where ad.AddressLine1 like '%750%' 
or ad.AddressLine1 like  '%950%'


