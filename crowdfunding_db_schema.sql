DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category (
	category_id VARCHAR(30) NOT NULL PRIMARY KEY,
	category VARCHAR(255)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(30) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(255)
);

CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal INT,
	pledged INT,
	outcome VARCHAR(255),
	backers_count INT,
	country VARCHAR(30),
	currency VARCHAR(30),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255)
);