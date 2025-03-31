# Restaurant-Order-Analysis-Maven-Analytics

Acting as a Data Analyst at Taste of the World Café, I was tasked with analyzing customer order data to evaluate the performance of a newly launched menu. The goal was to identify top-performing dishes, uncover underperforming items, and understand customer preferences to guide future menu decisions.

### Key Objectives

*   Explore the 'menu\_items' table to gain insights into the new offerings and their categories.
    
*   Analyze the 'order\_details' table to examine customer purchase behavior and order trends.
    
*   Combine both datasets to assess customer reactions, identify best-selling and least popular items, and determine patterns among top customers.
    

### Techniques & Tools Used

*   SQL: Joins, aggregation, window functions, and CTEs for data extraction and transformation.
    
*   Data Visualization: Created insights using pivot tables and charts to highlight trends.
    
*   Customer Segmentation: Identified high-value customers and their preferred menu items.
    

### Insights & Business Impact

*   Top-performing menu items: Discovered the most frequently ordered dishes, helping to optimize inventory management.
    
*   Underperforming items: Identified menu items with low sales, guiding potential menu adjustments.
    
*   Customer preferences: Analyzed purchasing habits of top customers to tailor marketing and promotions.
    

This project reinforced my expertise in data-driven decision-making and showcased my ability to turn raw customer data into actionable insights.

### Objective 1

1\. View the menu\_items table and write a query to find the number of items on the menu

2\. What are the least and most expensive items on the menu?

3\. How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?

4\. How many dishes are in each category? What is the average dish price within each category?

### Objective 2

1\. View the order\_details table. What is the date range of the table?

2\. How many orders were made within this date range? How many items were ordered within this date range?

3\. Which orders had the most number of items?

4\. How many orders had more than 12 items?

### Objective 3

1\. Combine the menu\_items and order\_details tables into a single table

2\. What were the least and most ordered items? What categories were they in?

3\. What were the top 5 orders that spent the most money?

4\. View the details of the highest spend order. Which specific items were purchased?

5\. View the details of the top 5 highest spend orders

### Observations

*   There are 32 different items in the menu.
    
*   The least and most expensive items on the entire menu are $5 and $19.95.
    
*   There are 9 Italian dishes in the menu.
    
*   The least and most expensive Italian items are $14.50 and $19.95.
    
*   The most expensive item on the menu is Italian.
    
*   There are 6 American items, 8 Asian items, 9 Italian and 9 Mexican items on the menu.
    
*   The data ranges from Jan 1, 2023 to Mar 31, 2023.
    
*   The total orders made in this period were 5,370.
    
*   Total items ordered in this period were 12,097.
    
*   The most number of items ordered in one order were 14 for order IDs 330, 440, 443, 1957, 2675, 3473, 4305.
    
*   20 orders had more than 12 items on them.
    
*   The least ordered item was Mexican - Chicken Tacos, ordered 123 times
    
*   The most ordered item was American - Hamburger, ordered 622 times.
    
*   Top 5 orders that spend most money were $192.15 (order ID 440), $191.05 (order ID 2075), $190.10 (order ID 1957), $189.70 (order ID 330), $185.10 (order ID 2675).
    
*   In the order with most money spent, the items ordered were: Chicken Parmesan, Chips & Salsa, Edamame, Eggplant Parmesan, Fettuccine Alfredo, French Fries, Hot Dog, Korean Beef Bowl, Meat Lasagna, Spaghetti, Spaghetti & Meatballs, Steak Tacos.
