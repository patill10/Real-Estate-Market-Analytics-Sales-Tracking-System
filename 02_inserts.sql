-- Author: Abhishek Patil

-- 6 Real Estate Agents
INSERT INTO Agents VALUES
(101, 'Rohan', 'Desai', 'rohan.desai@realestate.in', '2022-03-15'),
(102, 'Sneha', 'Kadam', 'sneha.kadam@realestate.in', '2023-01-10'),
(103, 'Vikram', 'Rathore', 'vikram.r@realestate.in', '2021-11-22'),
(104, 'Pooja', 'Hegde', 'pooja.hegde@realestate.in', '2024-05-05'),
(105, 'Aditya', 'Menon', 'aditya.m@realestate.in', '2020-08-19'),
(106, 'Neha', 'Sharma', 'neha.s@realestate.in', '2025-02-14');

-- 25 Properties across Mumbai, Pune, and Bengaluru
INSERT INTO Properties VALUES
(201, '104, Sea View Towers, Worli', 'Mumbai', 'Apartment', 25000000.00, '2026-01-10', 'Sold'),
(202, 'Villa 12, Palm Meadows, Whitefield', 'Bengaluru', 'House', 45000000.00, '2026-01-15', 'Sold'),
(203, 'B-302, Galaxy Heights, Andheri', 'Mumbai', 'Apartment', 18000000.00, '2026-01-20', 'Sold'),
(204, 'Plot 45, Koregaon Park', 'Pune', 'House', 32000000.00, '2026-02-05', 'Active'), -- Stale listing (>90 days)
(205, 'Flat 501, Hiranandani Estate, Thane', 'Mumbai', 'Apartment', 15000000.00, '2026-02-10', 'Sold'),
(206, 'Row House 3, Viman Nagar', 'Pune', 'Condo', 22000000.00, '2026-02-12', 'Active'), -- Stale listing (>90 days)
(207, 'Penthouse, Brigade Gateway', 'Bengaluru', 'Apartment', 55000000.00, '2026-02-20', 'Sold'),
(208, 'A-102, Magarpatta City', 'Pune', 'Apartment', 9500000.00, '2026-02-25', 'Sold'),
(209, 'Villa 7, Epsilon, Yemalur', 'Bengaluru', 'House', 60000000.00, '2026-03-01', 'Pending'),
(210, 'C-404, Oberoi Splendor, JVLR', 'Mumbai', 'Apartment', 28000000.00, '2026-03-05', 'Sold'),
(211, '12B, Baner Balewadi Rd', 'Pune', 'Condo', 14500000.00, '2026-03-10', 'Sold'),
(212, 'Prestige Shantiniketan, Tower B', 'Bengaluru', 'Apartment', 16000000.00, '2026-03-15', 'Active'), -- Approaching stale
(213, '201, Lodha Altamount', 'Mumbai', 'Apartment', 75000000.00, '2026-03-20', 'Sold'),
(214, 'Bungalow 9, Kalyani Nagar', 'Pune', 'House', 42000000.00, '2026-04-01', 'Sold'),
(215, 'Sobha City, Thanisandra', 'Bengaluru', 'Apartment', 12500000.00, '2026-04-05', 'Sold'),
(216, '305, Godrej Trees, Vikhroli', 'Mumbai', 'Apartment', 21000000.00, '2026-04-10', 'Sold'),
(217, 'Townhouse 4, Indiranagar', 'Bengaluru', 'Condo', 35000000.00, '2026-04-15', 'Active'),
(218, 'Amanora Park Town, Tower 4', 'Pune', 'Apartment', 11000000.00, '2026-04-20', 'Sold'),
(219, 'Purva Skywood, HSR Layout', 'Bengaluru', 'Apartment', 17000000.00, '2026-05-01', 'Pending'),
(220, '401, Rustomjee Elements, Juhu', 'Mumbai', 'Apartment', 65000000.00, '2026-05-05', 'Sold'),
(221, 'Blue Ridge, Hinjewadi', 'Pune', 'Apartment', 8500000.00, '2026-05-10', 'Active'),
(222, 'Villa 21, Narsingi', 'Bengaluru', 'House', 50000000.00, '2026-05-15', 'Sold'),
(223, '101, Kanakia Paris, BKC', 'Mumbai', 'Apartment', 38000000.00, '2026-05-20', 'Active'),
(224, 'Twin Bungalows, Wakad', 'Pune', 'House', 26000000.00, '2026-05-25', 'Sold'),
(225, 'Brigade Exotica, OMR', 'Bengaluru', 'Apartment', 19000000.00, '2026-05-28', 'Active');

-- 16 Transactions for the 'Sold' properties
-- Note: SaleDates are logically after ListingDates, and SalePrices reflect realistic negotiations
INSERT INTO Transactions VALUES
(301, 201, 101, 24500000.00, '2026-02-15'),
(302, 202, 102, 44000000.00, '2026-02-28'),
(303, 203, 103, 17800000.00, '2026-03-05'),
(304, 205, 104, 15000000.00, '2026-03-20'),
(305, 207, 105, 53500000.00, '2026-04-01'),
(306, 208, 106, 9200000.00, '2026-03-15'),
(307, 210, 101, 27500000.00, '2026-04-10'),
(308, 211, 102, 14000000.00, '2026-04-20'),
(309, 213, 103, 72000000.00, '2026-05-02'),
(310, 214, 104, 41000000.00, '2026-05-10'),
(311, 215, 105, 12200000.00, '2026-05-15'),
(312, 216, 106, 20500000.00, '2026-05-20'),
(313, 218, 101, 10800000.00, '2026-05-22'),
(314, 220, 102, 63000000.00, '2026-05-30'),
(315, 222, 103, 49000000.00, '2026-06-02'),
(316, 224, 104, 25500000.00, '2026-06-03');