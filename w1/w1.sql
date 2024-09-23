
CREATE DATABASE DB_B;

create table Students (
	Stnum char(4) primary key,
	Stname char(30),
	Suburb char(20),
	Phone char(5)
);

-- insert into Students values (1357, 'Jessica Steel', 'Manly', 54441);
-- insert into Students values (1245, 'Sandra Prasad', 'North Manly', 31117);
-- insert into Students values (1213, 'Jean Straus', 'North Bondi', 62236);
-- insert into Students values (1228, 'William Chen', 'Bondi Junction', 62225);
-- insert into Students values (1677, 'Albert Widjaya', 'South Bondi', 83336);
-- insert into Students values (6623, 'Amy Jackson', 'Manly', 13355);
-- insert into Students values (6644, 'Jackson Styles', 'Paddington', 12344);

select * from Students;