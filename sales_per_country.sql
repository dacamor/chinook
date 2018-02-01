select BillingCountry, count(total)
from Invoice
Group By BillingCountry