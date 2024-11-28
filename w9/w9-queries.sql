-- w9
-- q1
insert into Flowers values ('127C', 'Tulip', 'Pink', 10.00);

-- q1  part 2
select f.flowerNum, f.fName, f.fColour, f.fCost
    from Flowers f
    where f.FlowerNum in (select 
			  flowerNum 
			  from WhoSells)
    order by f.fName, f.fColour;
	
	
-- q1  part 2
select f.flowerNum, f.fName, f.fColour, f.fCost
    from Flowers f
    where Exists (select *									-- where Exists (select * --> this is common for all EXIST queries 
		  from WhoSells w
		  where f.flowerNum = w.flowerNum)					-- join outer query table and inner query table
    order by f.fName, f.fColour;
	
	
-- q2
select w.flowerNum, f.fName, f.fColour, s.shopName, sum(w.salePrice * w.onHand) 'TotalSalePrice'
    from Whosells w
    inner join Flowers f on w.flowerNum = f.flowerNum
    inner join Shops s on w.shopNum = s.shopNum
    inner join Profits p on s.shopName = p.shopName
    where p.percentProfit <= 
			    (select avg(percentProfit) from Profits) 
    group by w.flowerNum, f.fName, f.fColour, s.shopName
    having sum(w.salePrice * w.onHand) >= 1500
    order by f.fName desc;
	
	
-- q3
-- answer part 1
select f.fName, sum(w.onHand) 'TotalStock', avg(f.fCost) 'AverageCost'
    from Flowers f
    inner join WhoSells w on f.flowerNum = w.flowerNum    
    group by f.fName
    having avg(f.fCost) < 
			(select avg(fCost) from Flowers)


-- testing AVG cost
select avg(fCost) from Flowers
	
-- testing without filter
select f.fName, sum(w.onHand) 'TotalStock', avg(f.fCost) 'AverageCost'
    from Flowers f
    inner join WhoSells w on f.flowerNum = w.flowerNum    
    group by f.fName
   
   
-- answer part 2
-- answer 2 - exclude all roses
select f.fName, sum(w.onHand) 'TotalStock', avg(f.fCost) 'AverageCost'
    from Flowers f
    inner join WhoSells w on f.flowerNum = w.flowerNum  
    where f.fName not in 
			(select fName from Flowers where fName like '%rose%')
    group by f.fName
    having avg(f.fCost) < 
			(select avg(fCost) from Flowers)
			

-- q4
-- answer 1
select distinct(s.shopNum), s.shopName, s.suburb
    from Shops s
    inner join Whosells w
    on s.shopNum = w.shopNum
    where s.Suburb like '%manly%'
    and s.shopNum not in 
	(select shopNum from Whosells);
	

-- test queries
select distinct(s.shopNum), s.shopName, s.suburb, w.onHand
    from Shops s
    inner join Whosells w
    on s.shopNum = w.shopNum
    where s.Suburb like '%manly%';
    
select distinct(s.shopNum), s.shopName, s.suburb, w.onHand
    from Shops s
    inner join Whosells w
    on s.shopNum = w.shopNum
    where s.Suburb like '%manly%'
    and s.shopNum in 
	(select shopNum from Whosells);
	
	
-- answer 2
-- answer 2 using EXISTS
select distinct(s.shopNum), s.shopName, s.suburb
    from Shops s
    inner join Whosells w
    on s.shopNum = w.shopNum
    where s.Suburb like '%manly%'
    and NOT EXISTS
	(select shopNum from Whosells w
	    where w.shopNum = s.shopNum);