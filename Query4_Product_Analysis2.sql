/* find the sum of cost of each colours */

Select Color,SUM(StandardCost)
From SalesLT.Product
Group by Color

/* find all productcategory name,colour and their sum of costs */

Select pc.Name,p.Color,SUM(StandardCost)
From SalesLT.Product p
LEFT JOIN SalesLT.ProductCategory pc
ON p.ProductCategoryID = pc.ProductCategoryID
Group by p.Color,pc.Name
Order by pc.Name
