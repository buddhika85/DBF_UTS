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
where Suburb = 'Manly' and (Mark is null or Mark < 50) 
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
	and Suburb = 'Manly' 
    order by SubName, Mark desc;
    
select s.SubNum, SubName, Mark, Suburb 
    from Subjects s, Results r, Students st
    where (s.SubNum = r.SubNum and st.Stnum = r.StNum)
	and Mark > 50 
	and Suburb = 'Manly' 
    order by 2, 3 desc;