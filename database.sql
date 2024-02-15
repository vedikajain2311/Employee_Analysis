CREATE TABLE customer (
    customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(225),
    last_name VARCHAR(225),
    email_address VARCHAR(225) UNIQUE KEY,
    num_of_complaints INT
);

CREATE TABLE sales
(
   purchase_number INT NOT NULL AUTO_INCREMENT,
   date_of_purchase DATE NOT NULL,
   customer_id INT,
   item_code VARCHAR(10),
   PRIMARY KEY (purchase_number),
   FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE companies(
  company_id INT PRIMARY KEY,
  company_name VARCHAR(225) NOT NULL,
  headquarters_phone_no INT 
);

CREATE TABLE items(
  item_code INT PRIMARY KEY,
  item VARCHAR(225),
  unit_price INT,
  customer_id INT,
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

SELECT * FROM sales;
SELECT * FROM customer;
SELECT * FROM companies;
SELECT * FROM items;


