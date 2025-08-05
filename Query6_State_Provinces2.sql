/* Find all addressline1 which has either 750 or 950 inside them.Include the city, and country region also.*/

Select	AddressLine1,City,CountryRegion
From SalesLT.Address
Where AddressLine1 Like '%750%' or 
AddressLine1 Like '%950%'

/* Find all stateProvinces and how many addresses are associated with it.Order by count descending
Use Country Region for Canada only. Not United States.*/

Select StateProvince,count(*) as totalcount
From SalesLT.Address
Where CountryRegion = 'Canada'
group by StateProvince
order by count(*) desc

