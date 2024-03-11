-- Create your own store. You should have a table for all the items in your store, and at least 5 columns for the kind of data you'd need to store. 
-- You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.

CREATE TABLE pinoy_store (id INTEGER PRIMARY KEY, 
aisle INTEGER,
category TEXT,
brand TEXT, 
description TEXT, 
price$ INTEGER, 
stock INTEGER, 
qty_left INTEGER);

INSERT INTO pinoy_store VALUES(1,1,'snack','Dingdong','snack mix', 2,20,10);
INSERT INTO pinoy_store VALUES(2,5,'beauty', 'Brilliant skin', 'kojic soap', 8, 15,5);
INSERT INTO pinoy_store VALUES (3,3,'canned','Ligo','Spanish style sardines', 3,30,10);
INSERT INTO pinoy_store VALUES(4,3,'canned','555', 'Tuna adobo', 2, 30, 25);
INSERT INTO pinoy_store VALUES(5,3,'canned','century','mackerel in miso',4,10,5);
INSERT INTO pinoy_store VALUES(6,2,'flavoring','mama sitas', 'breading mix',1,50,10);
INSERT INTO pinoy_store VALUES(7,2,'flavoring','lupag', 'menudo mix',1,15,7);
INSERT INTO pinoy_store VALUES (8,2,'flavoring', 'knorr', 'chicken bouillon', 2,100,20);
INSERT INTO pinoy_store VALUES (9,4,'condiments','jufran','banana sauce',3,20,10);
INSERT INTO pinoy_store VALUES(10,4,'condiments','kamayan','shrimp paste',6,10,9);
INSERT INTO pinoy_store VALUES(11,4,'condiments','kamayan', 'vinegar',4,20,5);
INSERT INTO pinoy_store VALUES (12,6,'noodles','excellent','pancit palabok',3,15,10);
INSERT INTO pinoy_store VALUES (13,6,'noodles','super q', 'golden bihon',3,15,5);
INSERT INTO pinoy_store VALUES(14,6,'pastry','mulach','ensaymada',15,20,3);
INSERT INTO pinoy_store VALUES (15, 6,'pastry','premium','tikoy',15, 15,5);

-- To see all the data in my table
SELECT * FROM pinoy_store;

-- A query to show the number of stock sold by subtracting the original number of stock(stock) to the quantity left in store (qty_left) and giving an alias of stock_sold for the column.
-- I also computed for the revenue by getting the number of stock sold and multiplying it to the price.
SELECT *, stock-qty_left AS stock_sold, (stock-qty_left)*price$ AS revenue FROM pinoy_store;

-- I wanted to see the original quantity of products in the store, the number of products left to sell, the total number of products sold  and the total revenue of my pinoy store by using this select function.
SELECT SUM(stock), SUM(qty_left),SUM(stock-qty_left) AS total_stock_sold ,SUM((stock-qty_left)*price$) AS total_revenue FROM pinoy_store;

-- I wanted to see the following data: the aisle number, category, number of items sold, and the total revenue of the store arranged by aisle number
SELECT aisle,category,stock-qty_left AS QTY_SOLD, SUM((stock-qty_left)*price$) AS total_revenue FROM pinoy_store group by aisle;

-- Select statement and order by price ascending
SELECT * FROM pinoy_store ORDER BY price$ ASC;


