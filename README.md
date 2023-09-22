# Crowdfunding_ETL

Project to build an ETL pipeline using Python, Pandas, and PostgresSQL

Contributors: "Alice" Lan Nguyen, Angela Gosewehr, Jacob Anderson, and Brian Kath

Repository Structure - 

	- Main folder
		- .gitignore
		- ERD.txt
		- ETL_Mini_Project_Group_2.ipynb
		- Entity Relationship Diagram.png
		- README.md
		- crowdfunding_db_schema.sql

	- Sub-folder
		- Resources
			- campaign.csv
			- category.csv
			- contacts.csv
			- contacts.xlsx
			- crowdfunding.xlsx
			- subcategory.csv

Overview - 

Section 1: Create the Category and Subcategory DataFrames



-------------------------------------------------

Section 2: Create the Campaign DataFrame



-------------------------------------------------

Section 3: Create the Contacts DataFrame

For this section, I first imported an excel document containing contact information and placed the data into a DataFrame. I then iterated through the DataFrame; converting each row to a Python dictionary. I again iterated through each dictionary to exctract the values from the keys using Python list comprehension and added the values for each row to a new list. Finally, I created a new DataFrame using the extracted data, reorganized the column headers, and exported the resulting DataFrame to a csv file.

-------------------------------------------------

Section 4: Create the Crowdfunding Database

I used the QuickDBD app to sketch the Entity Relationship Diagram (ERD) and saved it as an image file. Based on the ERD, I created the database schema and saved it as a Postgres file named 'crowdfunding_db_schema.sql'. I created tables using the database schema, then import the csv files to its corresponding SQL table.
