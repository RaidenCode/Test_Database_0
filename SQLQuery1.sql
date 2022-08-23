CREATE TABLE Product (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Product
VALUES
	(1, 'Fruits'),
	(2, 'Cars'),
	(3, 'Books');

CREATE TABLE Category (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Category
VALUES
	(1, 'Apple'),
	(2, 'Lada Vesta'),
	(3, 'Grape');

CREATE TABLE ProductCategory (
	ProductId INT FOREIGN KEY REFERENCES Product(Id),
	CategoryId INT FOREIGN KEY REFERENCES Category(Id),
	PRIMARY KEY (ProductId, CategoryId)
);

INSERT INTO ProductCategory
VALUES
	(1, 1),
	(1, 3),
	(2, 2);

SELECT P."Name", C."Name"
FROM Product P
LEFT JOIN ProductCategory PC
	ON P.Id = PC.ProductId
LEFT JOIN Category C
	ON PC.CategoryId = C.Id;