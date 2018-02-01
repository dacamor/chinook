select country.BillingCountry, max(country.Total)
from (select BillingCountry, count(total) as Total
from Invoice
Group By BillingCountry) country
