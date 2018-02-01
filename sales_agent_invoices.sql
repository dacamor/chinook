Select Employee.FirstName || " " || Employee.LastName as FullName, Invoice.*
from invoice
join customer on invoice.CustomerId = Customer.CustomerId
join Employee on Customer.SupportRepId = Employee.EmployeeId