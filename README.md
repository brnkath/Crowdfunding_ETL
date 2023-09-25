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

Section 1: Create the Category and Subcategory DataFrames (Angela Gosewehr)

I took the raw data and transformed the category/subcategory column into two separate columns. I then created two dataframes that showed the unique values for the category column and for the subcategory column and an id number for each value. The files were saved to the resource folder as category.csv and subcategory.csv.

---

Section 2: Create the Campaign DataFrame (Jacob Anderson)

I made a copy of the crowdfunding dataframe and renamed some of its columns to be more clear about what information they actually provide. I also altered the data types of three of the columns so that it would be in a more usable format if we were to go forward with analyzing this dataset in the future. Then I merged the dataframe with the categroy and subcategory dataframes from Section 1, and removed any new columns that were unrelated or unessential to the campaign data. Finally, I exported the dataframe as a .csv file named campaign.csv

---

Section 3: Create the Contacts DataFrame (Brian Kath)

I first imported an excel document containing contact information and placed the data into a DataFrame. I then iterated through the DataFrame; converting each row to a Python dictionary. I again iterated through each dictionary to exctract the values from the keys using Python list comprehension and added the values for each row to a new list. Finally, I created a new DataFrame using the extracted data, reorganized the column headers, and exported the resulting DataFrame to a csv file.

---

Section 4: Create the Crowdfunding Database ("Alice" Lan Nguyen)

I used the QuickDBD app to sketch the Entity Relationship Diagram (ERD) and saved it as an image file. Based on the ERD, I created the database schema and saved it as a Postgres file named 'crowdfunding_db_schema.sql'. I created tables using the database schema, then import the csv files to its corresponding SQL table.
