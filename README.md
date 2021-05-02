# Pewlett-Hackard-Analysis

## Overview:
Pewlett-Hackard is looking for employees that are close to retiring so “retirement packages” can be offered based on certain criteria. They would also to know which positions will need to be filled when those employees do retire. We will be discovering who will be retiring and how many positions need to be filled by usin PostgreSQL.

## Resources:

*  [departments.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412406/departments.zip)


*  [dept_emp.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412409/dept_emp.zip) 


*  [dept_manager.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412410/dept_manager.zip)
 

*  [employees.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412412/employees.zip)


*  [salaries.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412413/salaries.zip)


*  [titles.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412415/titles.zip)


•	PostgreSQL, VScode



##  Results:

In our first deliverable, we created a “Retirement Table” that holds all the titles of current employees that were born from the start of 1952 to the end of 1955. By manipulating our data and functions, we were able to create the “Retirement Table” that holds the number of retirement age employees by their most recent job “title”.


•	The CSV files that were created: [retirement_titles.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412420/retirement_titles.zip) , [unique_titles.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412422/unique_titles.zip)

  

•	The output of the code that created the CSV file: ![Screenshot (65)](https://user-images.githubusercontent.com/79877349/116831009-d8a80700-ab61-11eb-8c9a-8537d17d9f93.png)
 

•	The output of the created table “Retiring Titles”: ![Screenshot (69)](https://user-images.githubusercontent.com/79877349/116831012-dcd42480-ab61-11eb-8afe-1cc1f9e48de6.png)
 


In deliverable 2, we created a “Mentorship Eligibility” table that holds the current employees that were born in the year 1965.

•	The CSV file created from our table merge: [mentorship_eligibilty.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412423/mentorship_eligibilty.zip)

•	This is the output from our created table “mentorship eligibility”:  ![Screenshot (70)](https://user-images.githubusercontent.com/79877349/116831036-f5443f00-ab61-11eb-9671-70f87691bc3f.png)



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




•	--Challenge deliverable 2

•	-- Use Dictinct with Orderby to remove duplicate rows

•	SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,

•		retirement_titles.first_name,

•		retirement_titles.last_name,

•		retirement_titles.title

•	INTO unique_titles

•	FROM retirement_titles

•	ORDER BY emp_no ASC, to_date DESC;	

•	SELECT unique_titles.title, COUNT(title)

•	INTO retiring_titles

•	FROM unique_titles

•	GROUP BY title

•	ORDER BY count DESC;


•	SELECT * FROM retiring_titles


## Summary


