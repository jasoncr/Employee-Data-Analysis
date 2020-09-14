# sql-challenge

In this challenge I took on the roll of a data engineer at a company. The company has their employees' information recorded in 6 differenct .csv files. As the data engineer I needed to find a way to link all these in an intelligent way. Therefore, I started out with an entity-relationship diagram (ERD) to visualize what is in each csv and how each csv would be linked to the next. That ERD is below. 

<img src="/EmployeeSQL/erd_v5.png" width="800">

Next I used PostgreSQL as my database and made the table schema to hold my .csv information. I created 6 tables to correspond to the 6 .csvs and took note of data types, primary keys, and foreign keys. I imported the data and then did some data analysis on it. The analysis I did was pretty standard to more complex. The questions included: employee information, filtering by who was hired in 1986, list managers of each department, find the employees with first name Hercules and last name starting with the letter "B", list employees in the sales department, and the count of employees who share a last name. Some of these questions required queries that included multiple JOINs, GROUPBYs, and WHERE statements. All the queries are in the "queries.sql" file. 

