
-- 1 display all the subject codes and names completed by Emily Willis. Sort the results by subject name. 

select --r.StNum, s.StName, 
    r.Subnum, u.Subname, r.Mark from Results r 
    inner join Students s on r.Stnum = s.Stnum
    inner join Subjects u on u.Subnum = r.Subnum
    where s.Stname = 'Emily Willis' and r.mark is not null
    order by u.Subname;

-- 2
select s.Stnum, s.Stname, s.Suburb 
    from Students s 
    where s.Suburb like '%Bondi%'
    order by s.Stname desc;
	
-- 3
select r.StNum, r.Subnum, s.StName, r.Mark from Results r 
    inner join Students s on r.Stnum = s.Stnum    
    where r.mark is null
    order by r.Subnum desc;
	
-- 4
select r.StNum, s.StName, r.Mark,
    r.Subnum, u.Subname from Results r 
    inner join Students s on r.Stnum = s.Stnum
    inner join Subjects u on u.Subnum = r.Subnum
    where r.mark is not null and r.mark >= 50
    order by u.Subname;
	
-- 5
select s.Stnum, s.Stname, s.Suburb, s.Phone 
    from Students s 
    where s.Stname like 'J%';