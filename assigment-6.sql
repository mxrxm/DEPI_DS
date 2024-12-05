/************************************assigment 6***************************/
/*
author :mariem ossama hussien
*/
use demo;

--task 1

select * from employees;

select employee_id,last_name,salary
from employees
where (salary between 2000 and 5000) and (manager_id!=101 or manager_id!=200);


--task 2

SELECT e.first_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
order by department_name asc ;


--task 3

SELECT count(employee_id) 'the count' ,avg(salary) 'average', department_id
FROM employees 
group by department_id ;

