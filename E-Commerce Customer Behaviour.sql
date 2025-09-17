SELECT * FROM public."ecommerce CB.csv"
LIMIT 10

--1. Which membership type has the highest average total spend?
SELECT "Membership Type", 
       AVG("Total_spend") AS Avg_Spend
FROM "ecommerce CB.csv"
GROUP BY "Membership Type"
ORDER BY Avg_Spend DESC;

--2. What is the average spend per item for each loyalty segment?
SELECT "Loyalty_Segment", 
       AVG("Spend_per_Item") AS Avg_Spend_Per_Item
FROM "ecommerce CB.csv"
GROUP BY "Loyalty_Segment"
ORDER BY Avg_Spend_Per_Item DESC;

--3. How many satisfied vs unsatisfied customers are there?
SELECT "Satisfaction Level", 
       COUNT(*) AS Customer_Count
FROM "ecommerce CB.csv"
GROUP BY "Satisfaction Level";

--4. Which city has the highest number of high-value customers?
SELECT "City", 
       COUNT(*) AS High_Value_Customers
FROM "ecommerce CB.csv"
WHERE "High_Value" = true
GROUP BY "City"
ORDER BY High_Value_Customers DESC
LIMIT 1;

--5. What is the average purchase frequency by age group?
SELECT "Age_Group", 
       AVG("Purchase_Frequency") AS Avg_Frequency
FROM "ecommerce CB.csv"
GROUP BY "Age_Group"
ORDER BY Avg_Frequency DESC;

--6. Do customers with discounts spend more than full-price customers?
SELECT "Discount_Category", 
       AVG("Total_spend") AS Avg_Spend
FROM "ecommerce CB.csv"
GROUP BY "Discount_Category";

--7. Find the top 5 customers by total spend.
SELECT "Customer ID", "Gender", "City", "Total_spend"
FROM "ecommerce CB.csv"
ORDER BY "Total_spend" DESC
LIMIT 5;

--8. Which membership type has the highest proportion of "Top Spender" loyalty segment?
SELECT "Membership Type", 
       (COUNT(*) FILTER (WHERE "Loyalty_Segment" = 'Top Spender')::DECIMAL / COUNT(*) * 100) AS Top_Spender_Percentage
FROM "ecommerce CB.csv"
GROUP BY "Membership Type"
ORDER BY Top_Spender_Percentage DESC;
