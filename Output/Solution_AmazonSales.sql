Use amazonsales;
-- List all products with a discounted price below ₹500.
Select product_name from customers
where discounted_price < 500;


-- Find products with a discount percentage of 50% or more.
Select product_name,
(discount_percentage *100) Disc_Percentage
from customers
having Disc_Percentage >= 50;


-- Retrieve all products where the name contains the word "Cable."
Select product_name,
product_name as Contains_label
from customers
where product_name like "%cable%";


-- Display the difference between the average of the actual price and the average of discounted price for each product.
SELECT 
  AVG(actual_price) AS avg_actual_price,
  AVG(discounted_price) AS avg_discounted_price,
  AVG(actual_price) - AVG(discounted_price) AS avg_difference
FROM Customers;


-- Query reviews that mention "fast charging" in their content.
Select product_id,
review_content as Contains_label
from customers
where review_content like "%fast charging%";


-- Identify products with a discount percentage between 20% and 40%.
Select product_name,
(discount_percentage *100) Disc_Percentage
from customers
having Disc_Percentage Between 20 and 40;


-- Find products that have an actual price above ₹1,000 and are rated 4 stars or above.
Select product_name,
actual_price,
rating from customers
where actual_price > 1000 and rating >= 4;


-- Find products where the discounted price ends with a 9 ?
SELECT product_id, product_name, discounted_price
FROM Customers
WHERE discounted_price LIKE '%9';

-- Display review contents that contains words like worst, waste, poor, or not good.
Select product_id,
review_content as Contains_label
from customers
where review_content LIKE '%worst%'
  OR review_content LIKE '%waste%'
  OR review_content LIKE '%poor%'
  OR review_content LIKE '%not good%';
  
  
  -- List all products where the category includes "Accessories."
Select product_id,
category as Contains_label
from customers
where category like "%Accessories%";

