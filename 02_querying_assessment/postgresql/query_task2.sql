-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.
--
-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- This scenario shows that I would use the 'staff' table, because the manager needs to contact every staff member 
-- whose role is 'Cook'. The table includes each staff member's name and role, which is what's needed here.
-- Data needed: first_name, last_name, role
-- Table involved: staff
-- SQL concept used:
--    - SELECT = to choose only the first_name and last_name columns
--    - WHERE = to filter rows where role equals 'Cook'

-- Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.
select first_name, last_name
from staff
where role = 'Cook'