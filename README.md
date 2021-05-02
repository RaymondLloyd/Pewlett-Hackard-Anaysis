# Pewlett-Hackard-Analysis

## Overview:
Pewlett-Hackard is looking for employees that are close to retiring so “retirement packages” can be offered based on certain criteria. They would also to know which positions will need to be filled when those employees do retire. We will be discovering who will be retiring and how many positions need to be filled by usin PostgreSQL.

## Resources:

* 
* 

* 

* 

* 

* 



•	PostgreSQL, VScode



##  Results:

In our first deliverable, we created a “Retirement Table” that holds all the titles of current employees that were born from the start of 1952 to the end of 1955. By manipulating our data and functions, we were able to create the “Retirement Table” that holds the number of retirement age employees by their most recent job “title”.
•	The CSV files that were created:   

•	The output of the code that created the CSV file:  

•	The output of the created table “Retiring Titles”:  


In deliverable 2, we created a “Mentorship Eligibility” table that holds the current employees that were born in the year 1965.

•	The CSV file created from our table merge: 


•	This is the output from our created table “mentorship eligibility”:  


## Query’s:
•	-- Challenge Deliverable 1
•	SELECT employees.emp_no,
•		employees.first_name,
•		employees.last_name,
•		titles.title,
•		titles.from_date,
•		titles.to_date
•	INTO retirement_titles
•	FROM employees 
•	INNER JOIN titles 
•	ON (employees.emp_no = titles.emp_no)
•	WHERE employees.birth_date BETWEEN '1952-01-01'
•	AND '1955-12-31'
•	ORDER BY emp_no ASC;
•	SELECT * FROM retirement_titles;
•	
•	
•	
•	--Challenge deliverable 2
•	-- Use Dictinct with Orderby to remove duplicate rows
•	SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
•		retirement_titles.first_name,
•		retirement_titles.last_name,
•		retirement_titles.title
•	INTO unique_titles
•	FROM retirement_titles
•	ORDER BY emp_no ASC, to_date DESC;
•	
•	SELECT unique_titles.title, COUNT(title)
•	INTO retiring_titles
•	FROM unique_titles
•	GROUP BY title
•	ORDER BY count DESC;
•	
•	SELECT * FROM retiring_titles


## Summary


