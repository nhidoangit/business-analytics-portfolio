-- Question-A
-- Table Creation

CREATE TABLE Promotion (
	PromoID CHAR(3) NOT NULL PRIMARY KEY,
	PromoName VARCHAR(50) NOT NULL,
	PromoDiscount DECIMAL(4,1) NOT NULL
);

CREATE TABLE Category (
	CategoryID CHAR(5) NOT NULL PRIMARY KEY,
	CategoryName VARCHAR(50) NOT NULL,
	CategoryDesc VARCHAR(200) NOT NULL
);

CREATE TABLE Chocolate (
	ChocolateID CHAR(6) NOT NULL PRIMARY KEY,
	ChocolateName VARCHAR(50) NOT NULL,
	ChocolateDesc VARCHAR(200) NOT NULL,
	ChocolatePrice DECIMAL (5, 2) NOT NULL,
	ChocolateWeight INT NOT NULL,
    CategoryID CHAR(5),
	FOREIGN KEY  (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Discount (
	PromoID CHAR(3) NOT NULL,
	ChocolateID CHAR(6) NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NOT NULL,
	PRIMARY KEY (PromoID, ChocolateID),
    FOREIGN KEY (PromoID) REFERENCES  Promotion(PromoID),
	FOREIGN KEY (ChocolateID) REFERENCES  Chocolate(ChocolateID)
);

CREATE TABLE Customer (
	CustomerID CHAR(6) NOT NULL PRIMARY KEY,
	CustomerName VARCHAR(70) NOT NULL,
	CustomerEmail VARCHAR(100) NOT NULL,
	CustomerPhNum VARCHAR(32) NOT NULL
);

CREATE TABLE Review (
	ReviewID CHAR(6) PRIMARY KEY,
	ReviewRating DECIMAL (2,0) NOT NULL,
	ReviewComment VARCHAR(255) NOT NULL,
	ReviewDate DATETIME NOT NULL,
	CustomerID CHAR(6) NOT NULL,
	ChocolateID CHAR(6) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY (ChocolateID) REFERENCES Chocolate(ChocolateID)
);


INSERT INTO Promotion VALUES
	('P01', "Opening Sale", 50.0);

INSERT INTO Category VALUES
	('CAT01', "Ecuador Single Origin", "Cocoa beans from a single Ecuadorian source");

INSERT INTO Chocolate VALUES
	('CHOC13', "Dark Chocolate Tablet", "Small, bite sized dark chocolate tablets", 17.99, 80, 'CAT01');

INSERT INTO Discount VALUES
	('P01', 'CHOC13', '2023-02-01 08:00:00', '2023-02-02 18:00:00');


INSERT INTO Customer VALUES
	('CUS145', "Jon Snow", "j.snow@gmail.com",  "90861923");

INSERT INTO Review VALUES
	('REV131', 8, "A delicious milk chocolate", '2024-03-02 13:22:54', 'CUS145','CHOC13');

-- Please ensure you INSERT atleast 5 records for every table and add it below
INSERT INTO Promotion VALUES
    ('P02', "Mid Month Sale",30.0),
    ('P03', "Weekly Sale",15.0),
    ('P04', "Mid Autumn Sale",40.0),
    ('P05', "Christmas Sale",60.0),
    ('P06', "New Year Sale",35.0);

INSERT INTO Category VALUES
	('CAT02', 'Madagascar Origin', 'Chocolate with aromatic fruit, citrus, forest flavour from Madagascar'),
	('CAT03', 'Marou Chocolate', 'Fine cacao with gently spiced flavour from Vietnam'),
	('CAT04', 'Peruvian Chocolate', 'Chocolate with fruity, floral, earthy notes from Peru'),
	('CAT05', 'Venezuela Chocolate', 'Chocolate with earthy, nutty of brown sugar and dark fruit from Venezuela'),
    ('CAT06', 'Australian Single Origin', 'Fine chocolate from Australia');

INSERT INTO Chocolate VALUES
    ('CHOC23', "72% Dark Chocolate", "Lime, orange zest, roasted pine nut & pineapple", 11.00, 85, 'CAT02'),
    ('CHOC33', "44% Cacao Coffee Milk Chocolate Bar", "Blend of organic Vietnamese Robusta and single origin dark chocolate", 13.99, 80, 'CAT03'),
    ('CHOC43', "Marana Cusco Dark 100%", "Intense nutty flavour", 9.50, 70, 'CAT04'),
    ('CHOC53', "85% Dark Chocolate bar", "Nutty, balanced acidity and fruit flavours, low bitterness", 7.69, 40, 'CAT05'),
    ('CHOC63', "Milk Chocolate 42% Cocoa bar", "Flavours of caramel, toffee and vanilla", 12.00, 100, 'CAT06');

INSERT INTO Discount VALUES
    ('P02', 'CHOC23', '2024-08-13 08:00:00', '2024-08-16 18:00:00'),
    ('P03', 'CHOC33', '2024-09-21 08:00:00', '2024-09-22 18:00:00'),
    ('P04', 'CHOC43', '2024-09-15 08:00:00', '2024-09-17 18:00:00'),
    ('P05', 'CHOC53', '2024-12-01 08:00:00', '2024-12-24 18:00:00'),
	('P06', 'CHOC63', '2024-12-31 08:00:00', '2025-01-03 18:00:00');


INSERT INTO Customer VALUES
    ('CUS007', "Anett Frank", "a.frank@gmail.com",  "93715846"),
    ('CUS613', "Lincoln Lacy", "llacy@gmail.com",  "90274519"),
    ('CUS020', "Cristen Jaida", "c.jaida@gmail.com",  "99274102"),
    ('CUS150', "Miranda Lena", "mirandalena@gmail.com",  "97392748"),
	('CUS170', "Lady Gaga", "ladygaga@gmail.com",  "99294927");

INSERT INTO Review VALUES
    ('REV231', 8, "Smooth balance of lime and chocolate", '2024-03-13 14:54:34', 'CUS007','CHOC23'),
    ('REV331', 9, "Seamless blend taste of cacao and coffee", '2024-09-12 09:40:32', 'CUS613','CHOC33'),
    ('REV431', 10, "Silky smooth chocolate with plenty of nuts", '2024-06-13 21:09:50', 'CUS020','CHOC43'),
    ('REV531', 7, "This choclate is dark but still tastes creamy and not too bitter", '2024-05-02 18:59:27', 'CUS150','CHOC53'),
    ('REV631', 8, "Relatively dark for a milk chocolate with a very pleasant", '2024-09-17 21:53:15', 'CUS170','CHOC63');







-- Question-B
/* Explain in simple words what each query does and make sure you comment it
 */

/* This query prints the names of all chocolates */

Select ChocolateName
from Chocolate;

-- Query 1: A query involving a single table with one condition. Insert your answer below
Select PromoDiscount, PromoName
from Promotion
WHERE PromoDiscount < (40.0);
/* This code prints the names of any promotion, where the promotion discount is greater than 10%
For example; This query would return for BIRTHDAYPROMO 15%OFF
*/
-- Query 2: A query involving a single table with two conditions, with one of the conditions that uses a wild card operator. Insert your answer below
Select ChocolateName, ChocolatePrice
from Chocolate
WHERE ChocolateName LIKE '%bar%'
OR ChocolatePrice > (11.00);
/* This code prints the names of any chocolate starting with the letter C or any chocolate priced over $20
For example; Cadbury Dairymilk will be recognised aswell as a Favourites chocolate box which costs $25
*/
-- Query 3: A query involving a join between at least two tables with an order by clause. Insert your answer below
Select C. CustomerName, R.ReviewRating
from Customer C
JOIN Review R ON C.CustomerID = R.CustomerID
ORDER BY R.ReviewRating DESC;
/* This code prints the name of the customer and their review rating from the highest to the lowest.
For example; 1. customer x - 5 star rating
             2. customer y - 4 star rating
*/


-- Query 4: A query involving a single table with an aggregate and group by function. Insert your answer below
SELECT Month(ReviewDate) AS 'Month', AVG(ReviewRating) AS 'Average Review'
From Review
GROUP BY Month(ReviewDate)
ORDER BY Month(ReviewDate) DESC;
/* This code prints the review date as "Month" and rating as "Average Review" from the lastest month to the oldest month
*/
