// Task 3: Stock Replenishment Check
// Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
// that are already well-stocked. They need a list of every ingredient with a stock level
// of 100 or more so those can be deprioritised in this week's order.
//
// Hint: Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task3_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// At first, I read the scenario and objective of this task, which is to find the stock levels of ingredients 
// to avoid over-ordering. They need a list of stock level of 100 or more. So, i decided to use mock ingredients data
// to find out the stock level.
// Collection used: ingredients (_id, name, stock_level, unit)
// MongoDB concept used:
//    - find ()
//    - $gte to match ingredients with stock_level of 100 or higher
//    - sort {1} to order the results ascending, making it easier for the manager to scan from lowest to highest stock

// Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.
use("chrome-burger-db");

db.ingredients.find(
    { stock_level: { $gte: 100 }}
).sort( { stock_level: 1})
