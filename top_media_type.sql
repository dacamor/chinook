Select media.MediaType, max(media.count)
from (select MediaType.Name as MediaType, count(Invoice.Total) as count
			from InvoiceLine
			join Invoice On InvoiceLine.InvoiceId = Invoice.InvoiceId
			join Track On InvoiceLine.TrackId = Track.TrackId
			join MediaType On Track.MediaTypeId = MediaType.MediaTypeId
			Group by MediaType.MediaTypeId) media
Order by media.count DESC