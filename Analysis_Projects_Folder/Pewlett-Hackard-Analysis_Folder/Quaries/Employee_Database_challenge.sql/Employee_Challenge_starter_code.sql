
-- Challenge Deliverable 1
-- 1)
SELECT emp_no, first_name, last_name
FROM employees;

-- 2)
SELECT title, from_date, to_date
FROM titles;

-- 3)
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees 
-- 4)
INNER JOIN titles 
ON (employees.emp_no = titles.emp_no)
-- 5)
WHERE employees.birth_date BETWEEN '1952-01-01'
AND '1955-12-31'
ORDER BY emp_no ASC;
SELECT * FROM retirement_titles;




-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
	retirement_titles.first_name,
	retirement_titles.last_name,
	retirement_titles.title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;




SELECT unique_titles.title, COUNT(title)
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles
