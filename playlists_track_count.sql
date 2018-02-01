select Playlist.Name, count(PlaylistTrack.TrackId) from PlaylistTrack
join Playlist On PlaylistTrack.PlaylistId = Playlist.PlaylistId
Group by PlaylistTrack.PlaylistId