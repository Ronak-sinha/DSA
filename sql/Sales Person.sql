/*https://leetcode.com/problems/sales-person/

# Write your MySQL query statement below
*/

select sp.name from salesperson sp where sp.sales_id not in
(select o.sales_id from orders o
join company c on (c.com_id=o.com_id)
where c.name='red');