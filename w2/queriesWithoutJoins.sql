--2
select Results.Stnum, Stname 
    from Results, Students
    where Results.Stnum = Students.Stnum 
    and Subnum = 'INDB001'
    order by Stname;
    
select Results.Stnum, Stname 
    from Results, Students, Subjects
    where Results.Stnum = Students.Stnum 
    and Results.Subnum = Subjects.Subnum
    and Subname = 'Data Analytics'
    order by Stname;
	

-- 3
select distinct Students.Stnum, Stname
    from Students, Results
    where Students.Stnum = Results.Stnum
    order by 2 desc;


-- another
select distinct s.Stnum, Stname
    from Students s
    inner join Results r
    on s.Stnum = r.Stnum
    order by 2 desc;


-- 4
select s.stnum, stname, phone
    from Students s, Subjects u, Results r
    where s.stnum = r.stnum
	and r.subnum = u.subnum
	and u.subname = 'Data Security'
	and r.mark >= 50;

-- another
select s.stnum, stname, phone
    from Students s 
        inner join Results r
	     on s.stnum = r.stnum
	inner join Subjects u
	     on r.subnum = u.subnum	
    where 
	u.subname = 'Data Security'
	and r.mark >= 50;


-- 5
select s.stnum, stname, phone
    from Students s, Subjects u, Results r
    where s.stnum = r.stnum
	and r.subnum = u.subnum
	and u.subname = 'Advanced Programming'
	and r.mark < 50;

-- another
select s.stnum, stname, phone
    from Students s 
        inner join Results r
	     on s.stnum = r.stnum
	inner join Subjects u
	     on r.subnum = u.subnum	
    where 
	u.subname = 'Advanced Programming'
	and r.mark < 50;
