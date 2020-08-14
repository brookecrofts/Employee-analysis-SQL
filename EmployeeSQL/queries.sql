-- Question # 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;

-- Question # 2
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Question # 3
SELECT	
		departments.dept_no, departments.dept_name,
		employees.emp_no AS Manager_emp_no, employees.last_name, employees.first_name
FROM
	  	departments
	  	INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
	  	INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;
			  
-- Question # 4
SELECT		
		employees.emp_no, employees.last_name, employees.first_name,
		departments.dept_name
FROM
	  	departments
	  	INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	  	INNER JOIN employees ON employees.emp_no = dept_emp.emp_no;

-- Question # 5
SELECT first_name, last_name, sex
FROM employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules';

-- Question # 6
SELECT		
		employees.emp_no, employees.last_name, employees.first_name,
		departments.dept_name
FROM
	  	departments
	  	INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	  	INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE 
		departments.dept_name = 'Sales';

-- Question # 7

SELECT		
		employees.emp_no, employees.last_name, employees.first_name,
		departments.dept_name
FROM
	  	departments
	  	INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	  	INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE 
		departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- Question # 8
SELECT (last_name),
	COUNT (last_name)
FROM employees
GROUP BY last_name 
HAVING 
COUNT (last_name) > 1
ORDER BY last_name DESC;
