select count(InvoiceLine.InvoiceLineId) as InvoiceLineItems, Invoice.*
from Invoice
join InvoiceLine On Invoice.InvoiceId = InvoiceLine.InvoiceId
Group by Invoice.InvoiceId