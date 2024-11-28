/*
1.	Write an SQL statement that uses a subquery to count all the shops that sell different types of flowers. 
Only include the flower names in the results that sell less than the number of shops that sell any type of roses.    
*/



-- count all the shops that sell different types of flowers. 
-- flowerName, shopCount
select f.fName, count(shopNum) 'ShopCount' 
    from WhoSells w inner join Flowers f
    on w.flowerNum = f.flowerNum
    group by f.fName    ;
    
-- only include shops that sell any type of roses.   
select f.fName, count(shopNum) 'ShopCount' 
    from WhoSells w inner join Flowers f    
    on w.flowerNum = f.flowerNum
    where f.fName like '%rose%'
    group by f.fName    ;


-- number of shops who sells  
select count(shopnum) 'Number of shops who sells'
 from WhoSells;
    
    
-- Only include the flower names that sell less than the number of shops who sells 
select f.fName, count(shopNum) 'ShopCount' 
    from WhoSells w inner join Flowers f    
    on w.flowerNum = f.flowerNum
    where f.fName like '%rose%'
    group by f.fName  
    having count(shopNum) < 
			    (select count(shopnum) 
			     from WhoSells);
				 
				 
				 
-------------------------------------------------------SAMPLE - solution given			    
Select fname, count(shopnum) as 'total shops'
from flowers f, whosells w
where f.flowernum = w.flowernum
and fname like'%rose%'
group by fname
having count(shopnum) < (select count(shopnum)
from flowers f, whosells w
where f.flowernum = w.flowernum);

