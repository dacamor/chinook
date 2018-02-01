Select FirstName || " " || LastName as FullName, CustomerId, Country
from Customer
where Country != "USA";