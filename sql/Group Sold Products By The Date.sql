/*https://leetcode.com/problems/group-sold-products-by-the-date/

# Write your MySQL query statement below
*/
select sell_date, count(distinct product) as num_sold, group_concat(distinct(product)) as products 
from activities group by sell_date order by sell_date;

/*
GROUP_CONCAT: The GROUP_CONCAT() function in MySQL is used to concatenate data from multiple rows into one field.
Syntax:
SELECT col1, col2, ..., colN
GROUP_CONCAT ( [DISTINCT] col_name1 
[ORDER BY clause]  [SEPARATOR str_val] ) 
FROM table_name GROUP BY col_name2;
*/