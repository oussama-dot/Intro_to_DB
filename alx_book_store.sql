CREATE DATABASE alx_book_store;
CREATE TABLE Books (
book_id INT NOT NULL PRIMARY KEY,
title VARCHAR(130),
price DOUBLE,
publication_date DATE
);
CREATE TABLE Authors(
author_id INT NOT NULL PRIMARY KEY,
author_name VARCHAR(215)
);
ALTER TABLE Books
ADD COLUMN author_id INT;

ALTER TABLE Books 
 ADD FOREIGN KEY (author_id) REFERENCES Authors(author_id);

CREATE TABLE Customers (
customer_id INT NOT NULL PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT
);
CREATE TABLE Orders(
customer_id INT,
order_id INT NOT NULL PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
order_date DATE
);
CREATE TABLE Order_Details (
orderdetailid INT NOT NULL PRIMARY KEY,
order_id INT,
book_id INT ,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE


)