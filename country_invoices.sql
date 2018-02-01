select BillingCountry, count(InvoiceId) from Invoice
Group by BillingCountry