// Task 1: Budget Meal Deal
// The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
// which menu items could be included. To qualify, an item must be priced under $10.00,
// so they can offer good value without cutting too deep into margins.
//
// Hint: Write a query to find all menu items in the menu_items collection that have a price less than 10.00.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task1_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// At first, I read the scenario and objective of this task, which is to find which menu items 
// are priced under $10. I decided to use the mock menu_items data because the owner wants to know 
// the price of each menu item to create a meal deal promotion without cutting too deep into margins.
// - Collection used: menu_items (_id, name, price, and category)
// - MongoDB concepts used: 
//      - find()
//      - $lt = less than, to filter price under $10
//      - setting '1' that in second object, which means controls which field to get result, not whole document

// Write a query to find all menu items in the menu_items collection that have a price less than 10.00.
use("chrome-burger-db");

db.menu_items.find(
    { price: { $lt: 10 }},
    { name: 1, price: 1, category: 1, _id: 1 }
)
