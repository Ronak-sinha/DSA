/*https://leetcode.com/problems/tree-node/submissions/

# Write your MySQL query statement below
*/
select id,
(case 
    when p_id is null then 'Root'
    when (p_id in (select id from tree) and id in (select p_id from tree)) then 'Inner'
    else 'Leaf'
end) as type from tree order by id asc;