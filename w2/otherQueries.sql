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