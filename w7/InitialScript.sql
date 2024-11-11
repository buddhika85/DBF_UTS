/* Create tables for Week 7 Tutorial */

Create Table Flowers 
	(FlowerNum 	Char(6) 	 	Not Null,
 	Fname 		Char(30) 		Not Null,
 	Fcolour 		Char(10) 		Not Null,
 	Fcost 		Decimal(9, 2) 	Not Null);

Alter Table Flowers Add Constraint Pk_Flowers Primary Key 
	Clustered (FlowerNum);

Create Table Shops 
	(Shopnum 	Char(5)  		Not Null,
 	Shopname 	Char(30) 		Not Null,
 	Suburb 		Char(30) 		Not Null);

Alter Table Shops Add Constraint Pk_Shops Primary Key 
	Clustered (Shopnum);

Create Table Whosells 
	(Shopnum 	Char(5) 		Not Null,
 	FlowerNum 	Char(6) 		Not Null,
 	Onhand 	Smallint 		Not Null,
 	Saleprice 	Decimal(9, 2) 	Not Null);

Alter Table Whosells Add Constraint Pk_Whosells Primary Key 
		Clustered (Shopnum, FlowerNum);

Insert into Flowers Values ('100A', 'Lily','Yellow',7.00);
Insert into Flowers Values ('100B', 'Daisy','Red',6.00);
Insert into Flowers Values ('101B', 'Jasmine','White',5.00);
Insert into Flowers Values ('101C', 'Hydrangea','Blue',27.00);
Insert into Flowers Values ('110D', 'Bush Rose', 'Pink',4.50);
Insert into Flowers Values ('110E', 'Shrub Rose', 'Yellow',4.75);
Insert into Flowers Values ('200E', 'Orchid', 'Purple',25.00);
Insert into Flowers Values ('112F', 'Climbing Rose', 'Orange',4.80);
Insert into Flowers Values ('115X', 'Daisy', 'Yellow',5.00);


Insert into Shops Values ('100', 'Floral Boutique', 'Bondi Beach');
Insert into Shops Values ('200', 'XYZ Florist', 'Coogee Beach');
Insert into Shops Values ('300', 'Floriade', 'Manly North');
Insert into Shops Values ('400', 'Floral Boutique', 'Manly');
Insert into Shops Values ('500', 'Floral Boutique', 'North Bondi');

Insert into Whosells Values ('100', '100A', 173, 7.50);
Insert into Whosells Values ('100', '100B', 63, 15.00);
Insert into Whosells Values ('100', '101C', 50, 30.00);
Insert into Whosells Values ('100', '101B', 0, 6.50);
Insert into Whosells Values ('200', '112F', 66, 6.50);
Insert into Whosells Values ('200', '100A', 100, 7.50);
Insert into Whosells Values ('200', '101B', 56, 7.50);
Insert into Whosells Values ('300', '200E', 78, 37.00);
Insert into Whosells Values ('300', '110E', 78, 37.00);
Insert into Whosells Values ('400', '100A', 0, 12.00);
Insert into Whosells Values ('400', '110D', 75, 12.00);
Insert into Whosells Values ('500', '112F', 343,10.00);
Insert into Whosells Values ('500', '100B', 65,15.00);

select * from flowers;
select * from shops;
select * from whosells;

select * 
into Whosells_Backup
from Whosells;

/* Create table for Week 8 Tutorial – NOW */
Create Table Profits 
	(Shopname 		Char(30) 		Not Null,
 	ProfitFromDate 	Date 			Not Null,
 	ProfitToDate 		Date	 		Not Null,
 	PercentProfit 	Decimal(9,2) 		Not Null);

Alter Table Profits Add Constraint Pk_Profits Primary Key 
	Clustered (Shopname);

select * from profits;
