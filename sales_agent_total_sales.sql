select Employee.FirstName || " " || Employee.LastName as SalesAgent, count(Invoice.Total)
from Employee
Join Customer On Customer.SupportRepId = Employee.EmployeeId
join Invoice On Invoice.CustomerId = Customer.CustomerId
Group by Employee.EmployeeId