-- Task 1: Sides Menu Board
-- The owner wants to update the printed menu board that displays only the side dishes.
-- They need a list of every item in the 'Side' category along with its current price,
-- so the designer can produce an accurate board without having to check each item manually.
--
-- Hint: Write a query to find the name and price of all menu items that are in the 'Side' category.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task1_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- After reading the scenario, I checked the data in Supabase to see which table the side dishes are stored in.
-- All the side dish information is in the 'menuitems' table, filtered by the 'Side' category. So I decided to 
-- query this table to give the designer an easy and accurate reference for the menu board.
-- Data needed: name, price, category
-- Table involved: menuitems
-- SQL concept used:
--    - SELECT = to choose only the name and price columns
--    - WHERE = to filter rows where category equals 'Side'

-- Write a query to find the name and price of all menu items that are in the 'Side' category.
select menuitems.name, menuitems.price
from menuitems
where category = 'Side'
