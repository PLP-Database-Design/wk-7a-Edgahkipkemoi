CREATE TABLE ProductDetail_1NF (
  OrderID INT,
  CustomerName VARCHAR(100),
  Product VARCHAR(50)
);

INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (103, 'Emily Clark', 'Phone');

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

CREATE TABLE OrderDetails_2NF (
  OrderID INT,
  Product VARCHAR(50),
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderDetails_2NF VALUES (101, 'Laptop', 2);
INSERT INTO OrderDetails_2NF VALUES (101, 'Mouse', 1);
INSERT INTO OrderDetails_2NF VALUES (102, 'Tablet', 3);
INSERT INTO OrderDetails_2NF VALUES (102, 'Keyboard', 1);
INSERT INTO OrderDetails_2NF VALUES (102, 'Mouse', 2);
INSERT INTO OrderDetails_2NF VALUES (103, 'Phone', 1);
