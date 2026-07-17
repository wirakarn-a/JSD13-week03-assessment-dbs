-- Task 2 Bonus: Shift Activity Report
-- Jane Doe has an upcoming performance review and the manager wants to look at her order history
-- ahead of the meeting. They only need to see when each order was placed and what it was worth —
-- no other details are required for this particular review.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the order_date and total_price from the Orders table
-- for all orders handled by Jane Doe. You will need to join with the Staff table
-- to filter by the staff member's name.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- The manager wants to review Jane Doe's order history, specifically just the date and total price. 
-- Since staff names aren't stored directly in the orders table, I need to join 'orders' with 'staff' 
-- by using shared staff_id, then filter for the staff name.
-- Data needed: order_date, total_price, first_name, last_name
-- Table involved: orders, staff
-- SQL concept used:
--    - join = to connect orders and staff via staff_id
--    - where = to filter for the specific staff

-- Write a query to find the order_date and total_price from the Orders table
select orders.order_date, orders.total_price
from orders
inner join staff on orders.staff_id = staff.staff_id
where staff.first_name = 'Jane' and staff.last_name = 'Doe'