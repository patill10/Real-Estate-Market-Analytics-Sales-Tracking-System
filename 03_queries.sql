-- Author: Abhishek Patil
-- Description: Analytical Queries for Business and Agent Optimization

-- Query 1: Agent Performance Leaderboard
-- Calculates total sales volume and properties sold per agent to determine bonuses.
SELECT 
    a.AgentID,
    CONCAT(a.FirstName, ' ', a.LastName) AS AgentName,
    COUNT(t.TransactionID) AS PropertiesSold,
    SUM(t.SalePrice) AS TotalSalesVolume,
    ROUND(AVG(t.SalePrice), 2) AS AverageSalePrice
FROM Agents a
INNER JOIN Transactions t ON a.AgentID = t.AgentID
GROUP BY a.AgentID, a.FirstName, a.LastName
ORDER BY TotalSalesVolume DESC;

-- Query 2: Property Type Revenue & Market Speed Analysis
-- Analyzes which property types bring in the most money and how fast they sell.
SELECT 
    p.PropertyType,
    COUNT(t.TransactionID) AS UnitsSold,
    SUM(t.SalePrice) AS TotalRevenue,
    ROUND(AVG(t.SalePrice), 2) AS AvgUnitSalePrice,
    -- Calculates the average days a property sits on the market before selling
    ROUND(AVG(DATEDIFF(t.SaleDate, p.ListingDate)), 0) AS AvgDaysOnMarket
FROM Properties p
INNER JOIN Transactions t ON p.PropertyID = t.PropertyID
GROUP BY p.PropertyType
ORDER BY TotalRevenue DESC;

-- Query 3: Troubleshooting Stale Listings (Active for > 90 days)
-- Identifies properties that aren't selling and automatically suggests a pricing strategy.
SELECT 
    PropertyID,
    Address,
    City,
    PropertyType,
    ListingPrice,
    ListingDate,
    DATEDIFF(CURRENT_DATE, ListingDate) AS DaysOnMarket,
    CASE 
        WHEN ListingPrice > 30000000.00 THEN 'Suggest 5% Price Drop (Premium Segment)'
        ELSE 'Suggest 3% Price Drop (Standard Segment)'
    END AS PricingRecommendation
FROM Properties
WHERE Status = 'Active' 
  AND DATEDIFF(CURRENT_DATE, ListingDate) > 90
ORDER BY DaysOnMarket DESC;