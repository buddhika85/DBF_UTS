-- w8

select * from Flowers;
select count(*) 'Row Count' from Flowers;

delete from Flowers where FlowerNum = '105T';

-- A
-- q1
insert into Flowers values ('105T', 'Red Tulip', 'Red', 9);

-- q2
select * from Flowers where FlowerNum = '105T';

update Flowers set FCost = FCost * 0.9 where FlowerNum = '105T';

select * from Flowers where FlowerNum = '105T';


-- q3
select * from Flowers;
select count(*) 'Row Count' from Flowers;

delete from Flowers where FlowerNum = '105T';

select * from Flowers;
select count(*) 'Row Count' from Flowers;

-- q4
select * from Profits;

insert into Profits values ('Exotic Florals', '1/1/2024', '12/31/2024', 14.47);
insert into Profits values ('Floral Boutique', '1/1/2024', '12/31/2024', 16.25);
insert into Profits values ('Floriade', '1/1/2024', '12/31/2024', 13.58);
insert into Profits values ('Lux Flowers', '1/1/2024', '12/31/2024', 25.23);
insert into Profits values ('XYZ Florist', '1/1/2024', '12/31/2024', 21.53);

select * from Profits;


-- q4 - option 2
select * from Profits;

insert into Profits values 
    ('Exotic Florals', '1/1/2024', '12/31/2024', 14.47),
    ('Floral Boutique', '1/1/2024', '12/31/2024', 16.25),
    ('Floriade', '1/1/2024', '12/31/2024', 13.58),
    ('Lux Flowers', '1/1/2024', '12/31/2024', 25.23),
    ('XYZ Florist', '1/1/2024', '12/31/2024', 21.53);

select * from Profits;


-- q5
select f.fname, f.fcolour, w.onhand, s.shopName
    from Flowers f 
	inner join Whosells w on f.flowerNum = w.flowerNum
	inner join Shops s on w.shopNum = s.shopNum
	where s.shopName != 'XYZ Florist'
	and w.onhand between 100 and 400;
	
-- q6
-- •	SELECT, FROM, JOIN, ON, WHERE, GROUP BY, HAVING, ORDER BY
select f.fcolour, f.fName, 
    sum(w.onHand) 'total stock', 
    max(w.salePrice) 'Max sale price', 
    min(w.salePrice) 'Min sale price'
    from Flowers f 
	inner join Whosells w on f.flowerNum = w.flowerNum
    where f.fcolour in ('yellow', 'orange')
    group by f.fcolour, f.fName
    having sum(w.onHand) > 50;
	
--q7
select s.shopname, s.suburb, f.fColour, f.Fname
    from Shops s
	inner join Whosells w on w.shopNum = s.shopNum
	inner join Flowers f on w.flowerNum = f.flowerNum
    where 
	(f.fcolour in ('pink', 'orange') and f.fname like '%Rose%')
	or 
	(f.fcolour = 'yellow' and f.fname like '%Daisy%');
	