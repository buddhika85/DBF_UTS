
CREATE DATABASE DB_B;

create table Students (
	Stnum char(4) primary key,
	Stname char(30),
	Suburb char(20),
	Phone char(5)
);

-- insert into Students values (1356, 'Jane Weebly', 'Manly', 54431);
-- insert into Students values (1245, 'Sandra Ho', 'North Manly', 31317);
-- insert into Students values (1214, 'Jean Paul', 'North Bondi', 63236);
-- insert into Students values (1228, 'William Smith', 'Bondi Junction', 62625);
-- insert into Students values (1677, 'Albert Chan', 'South Bondi', 83536);
-- insert into Students values (6623, 'Emily Willis', 'Manly', 13355);
-- insert into Students values (6645, 'Jackie Styles', 'Paddington', 12344);

select * from Students;


