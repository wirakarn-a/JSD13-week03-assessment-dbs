-- Task 4 Bonus: Total Revenue Summary
-- At the end of the trading period, the owner wants a single figure that shows how much revenue
-- the truck has generated across all recorded orders. This number will be used in their
-- financial summary report, so the result should be returned as a single value named total_revenue.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query that uses an aggregate function on the Orders table
-- to sum the total_price across all orders, returning the result as total_revenue.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- The owner wants a single total figure showing how much revenue the truck has generated across all recorded orders, 
-- to use in their financial summary report. I'll use the orders table and apply the sum() aggregate function to the total_price column.
-- Data needed: total price
-- Table involved: orders
-- SQL concept used: 
--    - sum = to add up the total_price values across all rows
--    - as = rename the result column

-- Write a query that uses an aggregate function on the Orders table to sum the total_price across all orders, 
-- returning the result as total_revenue.
select sum(orders.total_price) as total_revenue
from orders
