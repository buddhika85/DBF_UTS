-- TRUNCATE
TRUNCATE table Contents;
TRUNCATE table Items;
TRUNCATE table GiftPacks;

-- CREATE
CREATE TABLE GiftPacks (
    GiftPack VARCHAR(50) PRIMARY KEY,
    SalePrice DECIMAL(10, 2),
    NumberOfGiftPacks INT
);

CREATE TABLE Items (
    Item VARCHAR(50) PRIMARY KEY,
    Cost DECIMAL(10, 2)
);

CREATE TABLE Contents (
    GiftPack VARCHAR(50),
    Item VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (GiftPack, Item),
    FOREIGN KEY (GiftPack) REFERENCES GiftPacks(GiftPack),
    FOREIGN KEY (Item) REFERENCES Items(Item)
);


-- INSERT
INSERT INTO GiftPacks (GiftPack, SalePrice, NumberOfGiftPacks) VALUES
('Birthday', 220.00, 35),
('Picnic', 500.00, 20),
('Hike', 250.00, 17),
('Special', 300.00, 22);


INSERT INTO Items (Item, Cost) VALUES
('Apple', 1.50),
('Juice', 3.50),
('Banana', 1.00),
('Cake', 30.00),
('Burger', 12.00);

INSERT INTO Contents (GiftPack, Item, Quantity) VALUES
('Birthday', 'Apple', 7),
('Birthday', 'Juice', 5),
('Birthday', 'Burger', 10),
('Birthday', 'Cake', 1),
('Picnic', 'Banana', 25),
('Picnic', 'Apple', 30),
('Picnic', 'Burger', 35),
('Hike', 'Juice', 10),
('Hike', 'Burger', 15);


