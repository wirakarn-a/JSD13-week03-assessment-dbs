// Task 1 Bonus: Sides Menu Board
// The owner wants to update the printed menu board that displays only the side dishes.
// They need a list of every item in the 'Side' category along with its current price,
// so the designer can produce an accurate board without having to check each item manually.
//
// The dataset is identical in MongoDB — the same business insight can be retrieved.
//
// Hint: Write a query on the menu_items collection to find the name and price
// of all documents where the category is 'Side'.

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// The owner needs a list of every menu item in the 'Side' category along with its price, 
// so I'll use the menu_items collection, filtering for category: "Side" and 
// projecting only the name and price fields since the designer needs.
// - collection used: menu_items (name, price, category)
// - MongoDB used: 
//      - find () to filter the document where 'category' = 'side'
//      - Projection return only name and price, setting _id: 0 to exclude

// Write a query on the menu_items collection to find the name and price
// of all documents where the category is 'Side'.
use("chrome-burger-db");

db.menu_items.find(
    { category: "Side" },
    { name: 1, price: 1, _id: 0 }
)