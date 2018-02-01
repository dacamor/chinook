Select Customer.FirstName || " " || Customer.LastName as FullName, InvoiceId, InvoiceId, BillingCountry
from Invoice
join Customer On Invoice.CustomerId = Customer.CustomerId
where Customer.Country == "Brazil"