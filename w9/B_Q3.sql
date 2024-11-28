/*
    3.	Write a query to show the number of flowers and the average cost of all the flowers. Only include the flower name with the highest count in the results. 
*/


-- There are flowers with same name, but difference colors...etc
select fName, fColour from Flowers order by fName;
	
-- flower names with counts and average cost
select fName, count(fName) 'Count of Different Types', avg(fCost) 'Avg Cost'
    from Flowers
    group by fName;
    
-- include flower names with highest counts
select fName, count(fName) 'Count of Different Types', avg(fCost) 'Avg Cost'
    from Flowers
    group by fName
    having  count(fName) >=ALL 
				(select count(fName)
				    from Flowers
				    group by fName);
	    

-- SAMPLE - solution given			    
Select fname, count(fname) as DiffNumOfFlowers, avg(fcost) as AvgCost
From flowers
Group by fname
Having count(fname) >= ALL (select count(fname)
			    From flowers
			    Group by fname);

