/*
    2.	Display the details of the flower with the highest cost. Only include flowers that are blue or purple in the report.
*/

-- find flower/s with highest possible fCost
select * from Flowers 
    where fCost >= ALL 
			(select fCost from Flowers);
    
-- include only blue and purple
select * from Flowers 
    where 
	fColour in ('blue', 'purple')
	and
	fCost >= ALL 
		    (select fCost from Flowers);


-- SAMPLE - solution given			    

select *
from flowers
where fcolour in ('Blue','Purple')
and fcost >= All (select (fcost)
		    from flowers
			where fcolour in ('Blue','Purple'));

