select Track.Name as Track, Album.Title, MediaType.Name as MediaType, Genre.Name as Genre, Composer, Milliseconds, Bytes, UnitPrice
from Track
Join Album On Album.AlbumId = Track.AlbumId
join MediaType On Track.MediaTypeId = MediaType.MediaTypeId
join Genre On Track.GenreId = Genre.GenreId