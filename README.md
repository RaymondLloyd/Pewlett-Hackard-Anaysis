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

* QuickDBD :
*  ![EmployeeDB png](https://user-images.githubusercontent.com/79877349/116831445-4fde9a80-ab64-11eb-85d9-b5fd2d4d95da.png)


##  Results:

In our first deliverable, we created a “Retirement Table” that holds all the titles of current employees that were born from the start of 1952 to the end of 1955. By manipulating our data and functions, we were able to create the “Retirement Table” that holds the number of retirement age employees by their most recent job “title”.


•	The CSV files that were created: [retirement_titles.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412420/retirement_titles.zip) , [unique_titles.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412422/unique_titles.zip)

  

•	The output of the code that created the CSV file: ![Screenshot (65)](https://user-images.githubusercontent.com/79877349/116831009-d8a80700-ab61-11eb-8c9a-8537d17d9f93.png)
 

•	The output of the created table “Retiring Titles”:

![Screenshot (69)](https://user-images.githubusercontent.com/79877349/116831012-dcd42480-ab61-11eb-8afe-1cc1f9e48de6.png)
 


In deliverable 2, we created a “Mentorship Eligibility” table that holds the current employees that were born in the year 1965.

•	The CSV file created from our table merge: [mentorship_eligibilty.zip](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412423/mentorship_eligibilty.zip)

•	This is the output from our created table “mentorship eligibility”:  ![Screenshot (70)](https://user-images.githubusercontent.com/79877349/116831036-f5443f00-ab61-11eb-9671-70f87691bc3f.png)



## Quaries:

* Module Quary: [-- Creating tables for PH-EmployeeDB.txt](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412432/--.Creating.tables.for.PH-EmployeeDB.txt)

* Challenge Quaries: [-- Challenge Deliverable 1.txt](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412436/--.Challenge.Deliverable.1.txt) , [--Deliverable 2.txt](https://github.com/RaymondLloyd/Pewlett-Hackard-Anaysis/files/6412437/--Deliverable.2.txt)



## Summary

Our analysis was done to help Pewlett-Hackard determine which employees were close to retiring and what their corresponding job titles are. We were able to take the company data (CSV file) and make new data tables with the columns and data needed for our project. The tables provided in .png form show us the “titles” from employees born in 1952-1955 range. That range is important because those will be the employees who will be retirement eligible in the near future. This will give P-H the info needed to see which job will have to be filled. 

Another table was built to see the amount of employees that were retiring from each of the specific job titles at the company. This can help P-H decide where to invest more resources for future development.

In the 3rd table we were tasked with creating a “mentorship eligible”  table that tells us which current employee was born in 1965. This table was produced to show us which employees might be “the next man up” when the retiring employees retire. It shows us the employee tenure as well as the job title.

