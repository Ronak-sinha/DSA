/*https://leetcode.com/problems/calculate-special-bonus/

# Write your MySQL query statement below*/
select employee_id, if(employee_id%2!=0 and name not like 'm%', salary, 0) as bonus from employees ;