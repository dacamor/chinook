Select Employee.FirstName || " " || Employee.LastName as SalesAgent,
 Customer.FirstName || " " || Customer.LastName as CustomerName,
 Total, Customer.Country
from Invoice
join Customer on invoice.CustomerId = Customer.CustomerId
join Employee on Customer.SupportRepId = Employee.EmployeeId