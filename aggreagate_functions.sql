use aggregate
select * from additional
select sum(sales) as sum_sales from additional;
select avg(sales) as avg_sales from additional;
select min(sales)as min_sales from additional;
select max(sales) as max_sales from additional;
select count(sales) as count_sales from additional;

SELECT 'Sales Rep', Region, MAX(sales) AS Max_sales
FROM additional
GROUP BY 'Sales Rep', Region

SELECT `Sales Rep`, Region, AVG(profit) AS Avg_profit
FROM additional
GROUP BY `Sales Rep`, Region
HAVING AVG(profit) > 5000;

-- Using WHERE to filter rows before grouping
SELECT Region, AVG(sales) 
FROM additional
WHERE profit > 1000
GROUP BY Region;

-- Using HAVING to filter groups after aggregation
SELECT Region, AVG(sales) 
FROM additional
GROUP BY Region
HAVING AVG(sales) > 1000;

SELECT `Sales Rep`, ROUND(AVG(sales), 2) AS Avg_Sales
FROM additional
GROUP BY `Sales Rep`;

SELECT `Sales Rep`, ROUND(AVG(sales), 2) AS Avg_Sales
FROM additional
GROUP BY `Sales Rep`;

SELECT Region, MAX(profit) AS Highest_Profit
FROM additional
GROUP BY Region;

SELECT COUNT(DISTINCT `Sales Rep`) AS Unique_Reps
FROM additional;







