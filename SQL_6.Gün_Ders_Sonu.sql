--Select 
--ANSII
select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

select * from Customers  where City='London'
-- CASE İNSENSİTİVE
select * from Products WHERE CategoryID=1 or CategoryID=3

select * from Products WHERE CategoryID=1 and UnitPrice>=10

select * from Products order by UnitPrice asc -- ascending artan demek 

select * from Products  order by UnitPrice desc -- descending azalan demek 

select * from Products where CategoryID=1  order by UnitPrice desc -- descending azalan demek 

select COUNT(*)  Adet from Products where CategoryID=2

select CategoryID,COUNT(*) from Products group by CategoryID having COUNT(*)<10 -- 10'dan az ürün çeşidini göster

select CategoryID,COUNT(*) from Products where UnitPrice>20 group by CategoryID having COUNT(*)<10 

select * from Products inner join Categories on Products.CategoryID=Categories.CategoryID

select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories on Products.CategoryID=Categories.CategoryID


select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories on Products.CategoryID=Categories.CategoryID
WHERE Products.UnitPrice>10

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID

select * from Products p left join [Order Details] od on p.ProductID=od.ProductID
-- DTO DATA TRANFORMATİON OBJECT

select * from Customers c inner join Orders o on c.CustomerID=o.CustomerID

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID inner join Orders o on o.OrderID=od.OrderID