select Track.Name as TrackName, Artist.Name as ArtistName, InvoiceLine.* from InvoiceLine
join Track On InvoiceLine.TrackId = Track.TrackId
join Album On Track.AlbumId = Album.AlbumId
join Artist On Album.ArtistId = Artist.ArtistId