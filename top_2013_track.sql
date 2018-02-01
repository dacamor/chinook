Select song.Name, max(song.count)
from (select Track.Name as Name, count(Invoice.Total) as count
			from InvoiceLine
			join Invoice On InvoiceLine.InvoiceId = Invoice.InvoiceId
			join Track On InvoiceLine.TrackId = Track.TrackId
			where Invoice.InvoiceDate between "2013-01-01" and "2013-12-31"
			Group by InvoiceLine.TrackId) song