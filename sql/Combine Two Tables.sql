/*https://leetcode.com/problems/combine-two-tables/

# Write your MySQL query statement below

#Use of union:
# NON-NULL CASE
select Person.firstName, Person.lastName, Address.city, Address.state from Person, Address where Person.personId = Address.personId
union
# NULL CASE
select Person.firstName, Person.lastName, null, null from Person where Person.personId not in (select Address.personId from Address);
*/

select p.firstname, p.lastname, a.city, a.state from person p left join address a on p.personid = a.personid;