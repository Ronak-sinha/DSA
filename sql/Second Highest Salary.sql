/*ttps://leetcode.com/problems/second-highest-salary/

# Write your MySQL query statement below

RANK() OVER (
   [PARTITION BY expression, ]
   ORDER BY expression (ASC | DESC) );
   
RANK and DENSE_RANK will assign the grades the same rank depending on how they fall compared to the other values. However, RANK will then skip the next available ranking value whereas DENSE_RANK would still use the next chronological ranking value.

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

IF(condition, value_if_true, value_if_false)
*/

select if(max(dr.shs)<2, null, salary) as SecondHighestSalary from
    (select (dense_rank () over (order by salary desc))as shs, salary from employee) as dr
where shs=2;