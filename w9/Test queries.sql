-- test queries


select subnum, stnum, mark from Results order by mark desc;

select max(mark) 'max mark' from Results;                        -- we get max mark only without stnum

-- select  subnum, stnum, max(mark) 'max mark' from Results;     -- does not work as it needs group by


select  subnum, stnum, max(mark) 'max mark' from Results
    group by subnum, stnum order by max(mark) desc;
    
