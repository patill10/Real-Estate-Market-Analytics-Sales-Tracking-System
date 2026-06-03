-- Author: Abhishek Patil
-- Description: Database Schema for Real Estate Market Analytics

CREATE TABLE Agents (
    AgentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    HireDate DATE NOT NULL
);

CREATE TABLE Properties (
    PropertyID INT PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    PropertyType VARCHAR(50) CHECK (PropertyType IN ('House', 'Condo', 'Apartment')),
    ListingPrice DECIMAL(12, 2) NOT NULL,
    ListingDate DATE NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Active', 'Sold', 'Pending'))
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    PropertyID INT,
    AgentID INT,
    SalePrice DECIMAL(12, 2) NOT NULL,
    SaleDate DATE NOT NULL,
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);