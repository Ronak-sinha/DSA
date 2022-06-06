/*https://leetcode.com/problems/employees-with-missing-information/submissions/

# Write your MySQL query statement below
wrong:
select e.employee_id from employees e, salaries s where e.employee_id=s.employee_id and e.name is null or s.salary is null;
select e.employee_id from employees e inner join salaries s on e.employee_id=s.employee_id where salary is null;
*/

select e.employee_id from employees e left join salaries s on e.employee_id=s.employee_id where salary is null
union
select s.employee_id from salaries s left join employees e on e.employee_id=s.employee_id where name is null
order by employee_id;