use demo


SELECT * 
FROM employees 
WHERE hire_date >= DATEADD(DAY, -30, CAST(GETDATE() AS DATE));


CREATE PROCEDURE sp_get_employee_hours(IN emp_id INT)
BEGIN
    SELECT e.fname, e.lname, COALESCE(SUM(w.hours), 0) AS total_hours
    FROM employees e
    JOIN works_on w ON e.ssn = w.essn
    WHERE e.ssn = emp_id
    GROUP BY e.fname, e.lname;
END;

CREATE PROCEDURE sp_department_employee_count 
AS
BEGIN
    SELECT d.department_id, d.dname, COUNT(e.ssn) AS employee_count
    FROM departments d
    JOIN employees e ON d.department_id = e.department_id
    GROUP BY d.department_id, d.dname
    HAVING COUNT(e.ssn) > 5;
END;
