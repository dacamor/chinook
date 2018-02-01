select Employee.FirstName || " " || Employee.LastName as SalesRep, count(Customer.CustomerId) as Customers
from Customer
join Employee On Customer.SupportRepId = Employee.EmployeeId
Group by Customer.SupportRepId