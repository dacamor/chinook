select Track.Name as Name, count(InvoiceLine.Quantity) as count
from InvoiceLine
join Track On InvoiceLine.TrackId = Track.TrackId
Group by InvoiceLine.TrackId
order by count desc
Limit 5