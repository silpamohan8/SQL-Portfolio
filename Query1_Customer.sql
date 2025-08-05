/* find email address of Dominic Gash */

select EmailAddress
from AdventureWorks2022.SalesLT.Customer
where FirstName='Dominic'
and LastName = 'Gash'

/* find address of Dominic Gash */

select c.CustomerID,
 c.FirstName,
 c.LastName,
 ad.AddressLine1,
 ad.AddressLine2,
 ad.City,
 ad.CountryRegion,
 ad.PostalCode
from AdventureWorks2022.SalesLT.Customer c
	left join AdventureWorks2022.saleslt.CustomerAddress ca
		on c.CustomerID=ca.CustomerID
	left join AdventureWorks2022.SalesLT.Address ad
		on ca.AddressID=ad.AddressID
where c.FirstName='Dominic'
and c.LastName = 'Gash'




