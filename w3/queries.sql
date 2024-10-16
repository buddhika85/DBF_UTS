
-- 1 display all the subject codes and names completed by Emily Willis. Sort the results by subject name. 

select r.StNum, s.StName, r.Subnum, u.Subname, r.Mark from Results r 
inner join Students s on r.Stnum = s.Stnum
inner join Subjects u on u.Subnum = r.Subnum
where s.Stname = 'Emily Willis'
order by u.Subname;

select * from Students