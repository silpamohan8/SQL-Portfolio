/* find all products for the sell start date 2002 */

Select *
From SalesLT.Product
where year(SellStartDate) = '2002'

/* product category = Mountain Bikes have more than 30 products within its what other category has more than 30 products?*/

Select pc.Name,count(p.ProductCategoryID)
From SalesLT.Product p
LEFT JOIN SalesLT.ProductCategory pc
ON p.ProductCategoryID = pc.ProductCategoryID
group by pc.Name
having count(p.ProductCategoryID) >30