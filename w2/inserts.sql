use DB_B;

insert into Subjects 
values ('BINS001', 'Business Information Systems'),
('PROG001', 'Programming Fundamentals'), 
('PROG002', 'Advanced Programming'), 
('INDB001', 'Data Analytics'), 
('IDSC001', 'Data Security'), 
('IDSA001', 'Data Science'), 
('INEF001', 'Networking Fundamentals'), 
('IBRM001', 'Business Requirements Modelling'), 
('IITC001', 'Introduction to Technical Communication');


select * from Subjects;

insert into Results
values ('1356',	'INDB001',	72),
('1356',	'PROG002',	45),
('1356',	'IBRM001',	null),
('1356',	'IDSC001',	47),
('1214', 'IITC001', 67), 
('1214', 'BINS001', 86), 
('1228', 'IDSA001', 50), 
('1228', 'INDB001', null), 
('1228', 'PROG002', 55), 
('6623', 'PROG001', 47), 
('6623', 'IDSC001', 58), 
('6623', 'INDB001', 63), 
('6623', 'INEF001', null);

select * from Results;
