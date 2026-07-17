-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- As the owner wants to reward the hardest-working cashiers based on the orders each staff processed.
-- I would join two tables together (orders, staff) to find out which staff member is the busiest.
-- Data needed: staff member's full name, order id
-- Table involved: orders, staff
-- SQL concept used:
--    - left join = to combine staff and orders on the shared staff_id
--    - count() = to total the number of orders per staff member
--    - concat() = to combine first_name and last_name into a single full name field
--    - order by desc = to sort staff members from busiest to least busy

-- Write a query to find the total number of orders processed by each staff member.
select 
    concat(staff.first_name, ' ', staff.last_name) as full_name,
    count(orders.order_id) as total_orders
from staff
left join orders on staff.staff_id = orders.staff_id
group by staff.staff_id, staff.first_name, staff.last_name
order by total_orders desc;