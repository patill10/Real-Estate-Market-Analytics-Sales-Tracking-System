# Real-Estate-Market-Analytics-Sales-Tracking-System

**Author:** Abhishek Patil  
**Target Architecture:** Relational (SQL Server / MySQL compatible)  
**Project Classification:** Database Design & Analytics Portfolio

---

## Business Scenario
Regional real estate agencies struggle to consolidate agent performance metrics and property liquidity into a single source of truth. Without centralized data, agencies miss out on crucial market trends, such as identifying slow-moving inventory before it becomes stagnant or recognizing which property types generate the highest revenue density.

This project designs a relational database that tracks property listings, agents, and final sales transactions. The SQL analytics suite built on top of this schema automatically generates agent performance leaderboards, identifies market velocity by property type, and algorithmically flags "stale" listings (properties active for >90 days) with targeted price reduction strategies.

---

## Database Design

| Table Name | Column Name | Data Type | Keys / Constraints | Description |
| :--- | :--- | :--- | :--- | :--- |
| **Agents** | AgentID | INT | PRIMARY KEY | Unique identifier for each agent |
| | FirstName | VARCHAR(50) | NOT NULL | Agent's first name |
| | LastName | VARCHAR(50) | NOT NULL | Agent's last name |
| | Email | VARCHAR(100) | UNIQUE | Corporate email address |
| | HireDate | DATE | NOT NULL | Date agent joined the agency |
| **Properties** | PropertyID | INT | PRIMARY KEY | Unique identifier for listed property |
| | Address | VARCHAR(255) | NOT NULL | Local property address |
| | City | VARCHAR(100) | NOT NULL | City location (Mumbai, Pune, etc.) |
| | PropertyType | VARCHAR(50) | CHECK (Category) | House, Condo, or Apartment |
| | ListingPrice | DECIMAL(12,2)| NOT NULL | Initial asking price in INR |
| | ListingDate | DATE | NOT NULL | Date property went on market |
| | Status | VARCHAR(20) | CHECK (State) | Active, Sold, or Pending |
| **Transactions**| TransactionID| INT | PRIMARY KEY | Unique tracking ID for the sale |
| | PropertyID | INT | FOREIGN KEY | Links to Properties.PropertyID |
| | AgentID | INT | FOREIGN KEY | Links to Agents.AgentID |
| | SalePrice | DECIMAL(12,2)| NOT NULL | Final negotiated sale price |
| | SaleDate | DATE | NOT NULL | Date the transaction closed |

---

## Project Structure
The repository splits logical development stages into separate execution files to isolate schema deployment from analytics evaluation:

* `01_schema.sql` : Data Definition Language (DDL) scripting. Enforces structural domain integrity constraints and keys.
* `02_inserts.sql` : Scaled mock dataset incorporating proportional demographic profiles and localized market pricing.
* `03_queries.sql` : Business analytics suite targeting agent productivity, revenue aggregation, and automated pricing alerts.

---

## Setup Instructions

### Environment Prerequisites
Ensure access to any local modern SQL Server instance, MySQL Workbench environment, or cloud data execution interfaces (such as DB-Fiddle).

### Execution Chain
Execute the system components sequentially within your targeting instance interface:

1. **Build Structures:** Open and run the entirety of `01_schema.sql` to initialize data tables.
2. **Populate Constraints:** Execute `02_inserts.sql` to pipe data profiles into the tracking arrays.
3. **Evaluate Reports:** Execute scripts contained within `03_queries.sql` to generate performance analytics.
