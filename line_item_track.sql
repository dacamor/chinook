select Track.Name, InvoiceLine.* from InvoiceLine
join Track On InvoiceLine.TrackId = Track.TrackId