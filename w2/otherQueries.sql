-- Q1

-- Q2
-- better - readable, maintaiable, better suited for complex scenarios
-- better - The query optimizer is generally more efficient at optimizing queries written with explicit join syntax, 
-- especially when working with complex joins or larger datasets.
select s.Stnum, s.Stname , u.Subnum, u.SubName, r.Mark from Students s 
    right join Results r on s.Stnum = r.Stnum
    inner join Subjects u on u.Subnum = r.Subnum
    where u.Subname = 'Data Analytics'
    order by s.Stname;
    
-- outdated, less readable   
select s.Stnum, s.Stname , u.Subnum, u.SubName, r.Mark from Students s, Results r, Subjects u     
    where u.Subname = 'Data Analytics' and s.Stnum = r.Stnum and u.Subnum = r.Subnum
    order by s.Stname;
	
	
--Q3
select s.Stnum, s.Stname, r.Subnum, r.Mark from Students s 
    inner join Results r
    on s.Stnum = r.Stnum
    order by s.Stname desc;
    

-- another
select s.Stnum, s.Stname, r.Subnum, r.Mark from Students s, Results r
    where s.Stnum = r.Stnum
    order by s.Stname desc;
	
	
-- Q4
select s.Stnum, s.Stname, s.Phone
    --,r.Subnum, u.Subname, 
    --r.Mark 
    from Students s 
    inner join Results r
    on s.Stnum = r.Stnum
    inner join Subjects u 
    on u.Subnum = r.Subnum
    where u.Subname = 'Data Security' and r.Mark >= 50;
    

-- another
select s.Stnum, s.Stname, s.Phone, r.Subnum, u.Subname, r.Mark from Students s, Results r, Subjects u    
    where s.Stnum = r.Stnum and u.Subnum = r.Subnum and u.Subname = 'Data Security' and r.Mark >= 50;
	

-- Q5
select s.Stnum, s.Stname, s.Phone
    --,r.Subnum, u.Subname, 
    --r.Mark 
    from Students s 
    inner join Results r
    on s.Stnum = r.Stnum
    inner join Subjects u 
    on u.Subnum = r.Subnum
    where u.Subname = 'Advanced Programming' and r.Mark < 50;
    

-- another
select s.Stnum, s.Stname, s.Phone, r.Subnum, u.Subname, r.Mark from Students s, Results r, Subjects u    
    where s.Stnum = r.Stnum and u.Subnum = r.Subnum and u.Subname = 'Advanced Programming' and r.Mark < 50;


