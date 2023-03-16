-- What is the revenue for ClosedWon opp for each Lead Source
-- 1. Get LeadSource and SUM(ExpectedRevenue) from _Opportunity
-- 2. WHERE StageName = 'Closed Won'
-- 3. GROUP BY LeadSource

SELECT
    LeadSource,
    SUM(ExpectedRevenue) AS Revenue
FROM "Opportunity" 
WHERE StageName = 'Closed Won' 
GROUP BY LeadSource

-- 1. Get the Name and sum of Amount from Opportunity
-- 2. Where the StageName is 'Closed Won'
-- 3. Group by Name
-- 4. Order by Total_Amount descending
-- 5. Return the top 20 results

SELECT
    Name,
    SUM(Amount) AS Total_Amount
FROM
    "Opportunity"
WHERE StageName = 'Closed Won' GROUP BY Name ORDER BY Total_Amount DESC LIMIT 20

-- 1. Get the FiscalYear and SUM(Amount) from Opportunity
-- 2. Where the StageName is 'Closed Won'
-- 3. Group by FiscalYear

SELECT
    FiscalYear,
    SUM(Amount) AS Revenue
FROM
    "Opportunity"
WHERE StageName = 'Closed Won'
GROUP BY FiscalYear


-- 1. Get the fiscalquarter, fiscalyear, and sum of amount from Opportunity
-- 2. Group by fiscalquarter and fiscalyear
-- 3. Only include results where fiscalyear is 2021 or 2022
-- 4. Return the revenue for each fiscalquarter/fiscalyear combination

SELECT
    fiscalquarter,
    fiscalyear,
    SUM(amount) AS revenue
FROM
    "Opportunity"
GROUP BY fiscalquarter, fiscalyear HAVING fiscalyear IN (2021,2022);