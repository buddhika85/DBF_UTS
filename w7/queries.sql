-- SELECT, FROM, JOIN, ON, WHERE, GROUP BY, HAVING, ORDER BY

-- select * from Students;

-- select * from Subjects;

-- select * from Results;

-- q1 student numbers, subject numbers, and marks for students with a student number of less than 6000.
select Stnum, Subnum, Mark from Results where Stnum < 6000;


-- q2
-- subject numbers, student numbers, and marks for the students who studied but failed the subjects. 
-- Order the query by subject number in ascending order and mark in descending order using a column position 
select Subnum, Stnum, Mark from Results where Mark < 50 order by Subnum, 3 desc;

-- q3
select * from Results where Mark is null;
select Subnum from Results where Mark is null group by Subnum having count(subNum) = 1;

-- q4
select s.StNum, Stname, Suburb, Mark
from Students s inner join Results r on s.StNum = r.StNum
where Suburb like '%Manly%' and (Mark is null or Mark < 50) 
order by Stname;

-- q5
select Subnum, Stnum, mark from Results 
    where mark between 65 and 80 
    order by mark;
	
-- B
--select * from Flowers;
--select * from Shops;
--select * from WhoSells;
-- q1
select s.SubNum, SubName, Mark, Suburb 
    from Subjects s, Results r, Students st
    where (s.SubNum = r.SubNum and st.Stnum = r.StNum)
	and Mark > 50 
	and Suburb like '%Manly%' 
    order by SubName, Mark desc;
    
select s.SubNum, SubName, Mark, Suburb 
    from Subjects s, Results r, Students st
    where (s.SubNum = r.SubNum and st.Stnum = r.StNum)
	and Mark > 50 
	and Suburb like '%Manly%' 
    order by 2, 3 desc;
	
-- q2.	lists the numbers and names of all students who have studied a subject. 
-- Only include each number once in the report. 
-- Sort the results by student number in ascending order and name in descending order.

select distinct r.stNum, s.stname from Results r
    inner join Students s on r.stnum = s.stnum
    order by r.stNum, stname desc;
	
-- q3
select s.stnum, stname, r.mark from Results r 
    inner join Students s on r.stnum = s.stnum
    where r.mark is null
    order by s.stnum, stname desc;

--q4
select s.shopname, f.fname, f.fcolour, w.onhand from Flowers f 
    inner join Whosells w on f.flowernum = w.flowernum
    inner join Shops s on w.shopnum = s.shopnum
    where (f.fcolour = 'yellow' and f.fname = 'lily')
	and w.onhand > 0
    order by s.shopname desc;

-- q5
select s.shopname, w.saleprice, (w.salePrice * 0.75) 'discountedPrice', w.flowernum, f.fname, w.onhand from Whosells w 
    inner join Flowers f on f.flowernum = w.flowernum
    inner join Shops s on s.shopnum = w.shopnum
    where w.OnHand Between 50 and 100
	and (w.salePrice * 0.75 > 8.0)
	order by s.shopname, w.salePrice;

select s.shopname, w.saleprice, (w.salePrice * 0.75) 'discountedPrice', w.flowernum, f.fname, w.onhand 
    from Whosells w, Flowers f, Shops s 
    where f.flowernum = w.flowernum
	and s.shopnum = w.shopnum
	and  w.OnHand Between 50 and 100
	and (w.salePrice * 0.75 > 8.0)
	order by s.shopname, w.salePrice;