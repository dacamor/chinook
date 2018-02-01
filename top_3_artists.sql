Select Artist.*
from (select Artist.Name as ArtistName, count(Invoice.Total) as count
			from InvoiceLine
			join Invoice On InvoiceLine.InvoiceId = Invoice.InvoiceId
			join Track On InvoiceLine.TrackId = Track.TrackId
			join Album On Track.AlbumId = Album.AlbumId
			join Artist on Album.ArtistId = Artist.ArtistId
			Group by Artist.ArtistId) Artist
Order by Artist.count DESC
Limit 3