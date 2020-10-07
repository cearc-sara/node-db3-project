-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.ProductName, c.CategoryName 
from category as c
join product as p on p.CategoryId = c.id;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select s.CompanyName, o.Id, o.OrderDate
from shipper as s
join [order] as o on s.id = o.ShipVia
where o.OrderDate < "2012-08-09"
order by o.OrderDate;


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName, o.Quantity, o.OrderId
from product as p
join orderDetail as o on o.ProductId = p.Id
where o.orderId = 10251
group by p.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.Id, c.CompanyName, e.LastName
from [order] as o
join employee as e on e.id = o.employeeId
join customer as c on c.id = o.customerId;