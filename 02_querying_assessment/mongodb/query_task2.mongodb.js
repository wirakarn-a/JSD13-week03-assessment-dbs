// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// At first, I read the scenario and looked at the data at the same time to check which fields I would need.
// I decided to use the mock orders data to review Jane Doe's order history ahead of her performance review.
// - Collection used: orders (order_date, total_price, _id) and use first_name and last_name to filter Jane Doe.
// - MongoDB concept used: 
//      - find () to filter staff name
//      - return only the order_date and total_price, and setting _id: 0 to exclude

// Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.
use("chrome-burger-db");

db.orders.find(
    { "staff.first_name": "Jane", "staff.last_name": "Doe" },
    { order_date: 1, total_price: 1, _id: 0 }
);