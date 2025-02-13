use demo
select * from employees

--Task 1
CREATE VIEW vw_employee_details AS
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

select * from vw_employee_details


--Task 2
CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT e.fname, e.lname, p.pname, w.hours
FROM employees e
JOIN work_hours w ON e.employee_id = w.employee_id
JOIN projects p ON w.project_id = p.project_id
WHERE e.department_id = 5;

--Task 3
CREATE VIEW vw_high_status_suppliers AS
SELECT * FROM suppliers
WHERE status > 15
WITH CHECK OPTION;
