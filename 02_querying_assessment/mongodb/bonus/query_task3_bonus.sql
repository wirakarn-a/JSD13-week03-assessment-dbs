-- Task 3 Bonus: Stock Replenishment Check
-- Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
-- that are already well-stocked. They need a list of every ingredient with a stock level
-- of 100 or more so those can be deprioritised in this week's order.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the name of all rows in the Ingredients table
-- where the stock_level is greater than or equal to 100.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- The manager wants to avoid over-ordering ingredients that are already well-stocked, so they need a list of ingredient names
-- where the stock level is 100 or more. I'll use the ingredients table to identify which items to deprioritize.
-- Data needed: ingredient name, stock level
-- Table involved: ingredients
-- SQL concept used:
--    - select = to choose the ingredient name
--    - where (>=) = to filter for ingredients with a stock level of 100 or higher

-- Write a query to find the name of all rows in the Ingredients table where the stock_level is greater than or equal to 100.
select name
from ingredients
where stock_level >= 100
