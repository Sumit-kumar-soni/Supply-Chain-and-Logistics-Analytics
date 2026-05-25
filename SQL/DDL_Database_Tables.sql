-- Create Database

CREATE DATABASE Supply_chain_DB;
GO

-- Use Database

USE Supply_chain_DB;
GO

-- Create tables

CREATE TABLE SupplyChain_Orders (
    [Type] VARCHAR(50),
    [Days For Shipping (Real)] INT,
    [Days For Shipment (Scheduled)] INT,
    [Benefit Per Order] FLOAT,
    [Sales Per Customer] FLOAT,
    [Delivery Status] VARCHAR(50),
    [Late Delivery Risk] INT,
    [Category Id] INT,
    [Category Name] VARCHAR(100),
    [Customer City] VARCHAR(100),
    [Customer Country] VARCHAR(100),
    [Customer Email] VARCHAR(100),
    [Customer First Name] VARCHAR(50),
    [Customer Id] INT,
    [Customer Last Name] VARCHAR(50),
    [Customer Password] VARCHAR(100),
    [Customer Segment] VARCHAR(50),
    [Customer State] VARCHAR(100),
    [Customer Street] VARCHAR(255),
    [Customer Zipcode] VARCHAR(50), -- Kept as VARCHAR so leading zeros aren't deleted!
    [Department Id] INT,
    [Department Name] VARCHAR(100),
    [Latitude] FLOAT,
    [Longitude] FLOAT,
    [Market] VARCHAR(50),
    [Order City] VARCHAR(100),
    [Order Country] VARCHAR(100),
    [Order Customer Id] INT,
    [Order Date (Date Orders)] DATETIME,
    [Order Id] INT,
    [Order Item Cardprod Id] INT,
    [Order Item Discount] FLOAT,
    [Order Item Discount Rate] FLOAT,
    [Order Item Id] INT,
    [Order Item Product Price] FLOAT,
    [Order Item Profit Ratio] FLOAT,
    [Order Item Quantity] INT,
    [Sales] FLOAT,
    [Order Item Total] FLOAT,
    [Order Profit Per Order] FLOAT,
    [Order Region] VARCHAR(100),
    [Order State] VARCHAR(100),
    [Order Status] VARCHAR(50),
    [Order Zipcode] VARCHAR(50),   -- Kept as VARCHAR
    [Product Card Id] INT,
    [Product Category Id] INT,
    [Product Image] VARCHAR(MAX),  -- Usually a long URL string
    [Product Name] VARCHAR(255),
    [Product Price] FLOAT,
    [Product Status] VARCHAR(50),
    [Shipping Date (Date Orders)] DATETIME,
    [Shipping Mode] VARCHAR(50)
);
GO

INSERT INTO DataCoSupplyChain
SELECT * FROM DataCoSupplyChain_Raw;

DROP TABLE DataCoSupplyChain_Raw;

CREATE TABLE SupplyChain_WebLogs (
    [Products] VARCHAR(255),
    [Category] VARCHAR(100),
    [Date] DATE,
    [Month] VARCHAR(50),
    [Hour] INT,
    [Department] VARCHAR(100),
    [IP] VARCHAR(50),
    [URL] VARCHAR(MAX)
);
GO

INSERT INTO TokenizedAccessLogs
SELECT * FROM TokenizedAccessLogs_Raw;

DROP TABLE SupplyChain_WebLogs_Raw;