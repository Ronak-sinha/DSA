/*https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

# Write your MySQL query statement below

(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
*/
select v.customer_id, count(v.visit_id) as count_no_trans 
from visits v left join transactions t on v.visit_id=t.visit_id 
where t.transaction_id is null group by customer_id;