CREATE TABLE Customers (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT
);

CREATE TABLE Products (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

CREATE TABLE Orders (
    ID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(ID),
    ProductID INT REFERENCES Products(ID),
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Quantity INT,
    TotalPrice DECIMAL(10, 2)
);
