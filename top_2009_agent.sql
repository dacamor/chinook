select emp.SalesAgent, max(emp.count) 
from (select Employee.FirstName || " " || Employee.LastName as SalesAgent, count(Invoice.Total) as count
		from Employee
		Join Customer On Customer.SupportRepId = Employee.EmployeeId
		join Invoice On Invoice.CustomerId = Customer.CustomerId
		where Invoice.InvoiceDate between "2009-01-01" and "2009-12-31"
		Group by Employee.EmployeeId) emp