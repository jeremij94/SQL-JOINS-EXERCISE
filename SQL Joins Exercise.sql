-- Exercise 1:
-- Copy and Paste this sql code into your MySQL Editor:
/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 
 SELECT products.Name, categories.Name
 FROM products
 INNER JOIN categories on categories.CategoryID = products.CategoryID
 Where categories.Name = "Computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 
 SELECT products.Name, products.Price, reviews.Rating
 FROM products
 LEFT JOIN reviews on reviews.ProductID = products.ProductID
 WHERE reviews.Rating = 5;
 
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, employees.LastName, employees.EmployeeID, SUM(sales.Quantity)
FROM sales
LEFT JOIN employees ON employees.EmployeeID = sales.EmployeeID
GROUP BY sales.EmployeeID
ORDER BY SUM(sales.Quantity)Desc;


/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT departments.Name, categories.Name
FROM categories
INNER JOIN departments on categories.DepartmentID = departments.DepartmentID
WHERE categories.Name = "Appliances" OR categories.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.Name, SUM(sales.Quantity), SUM(sales.Quantity * sales.PricePerUnit)
FROM products
INNER JOIN sales ON products.ProductID = sales.ProductID
WHERE sales.ProductID = 97; 



/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.Name, reviews.Reviewer, reviews.Rating, reviews.Comment
FROM products
RIGHT JOIN reviews ON products.ProductID = reviews.ProductID
WHERE products.Name = "Visio TV" AND reviews.Rating = 1; 

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT 

/*Once finished, create a new folder in your repo
Save the SQL file there
Stage, commit, and push up to GitHub*/