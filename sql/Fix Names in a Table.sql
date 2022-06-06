/*https://leetcode.com/problems/fix-names-in-a-table/

# Write your MySQL query statement below
/* fails:
update users set name = upper(substring(name,1,1)) + lower(Substring(name,2,length(name)));

select user_id, name from users where name=concat(upper(substring(name,1,1)), lower(Substring(name,2,length(name))));

UPDATE users SET name=concat(UPPER(LEFT(name,1)),LOWER(SUBSTRING(name,2,length(name))));
*/

select user_id, concat(upper(substring(name,1,1)), lower(Substring(name,2,length(name)))) as 'name' from users order by user_id;