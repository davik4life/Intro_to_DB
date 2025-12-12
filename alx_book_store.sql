/*
 Books: Stores information about books available in the bookstore.

book_id (Primary Key)
title VARCHAR(130)
author_id (Foreign Key referencing Authors table)
price DOUBLE
publication_date DATE

Authors: Stores information about authors.

author_id (Primary Key)
author_name VARCHAR(215)

Customers: Stores information about customers.

customer_id (Primary Key)
customer_name VARCHAR(215)
email VARCHAR(215)
address TEXT

Orders: Stores information about orders placed by customers.

order_id (Primary Key)
customer_id (Foreign Key referencing Customers table)
order_date DATE

Order_Details: Stores information about the books included in each order.

orderdetailid (Primary Key)
order_id (Foreign Key referencing Orders table)
book_id (Foreign Key referencing Books table)
quantity DOUBLE
NOTE : - The file extension should be alx_book_store.sql file - All SQL keywords should be in uppercase
*/

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT FOREIGN KEY REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE,
)

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215),
)

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id),
    order_date DATE
)

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES Orders(order_id),
    book_id INT FOREIGN KEY REFERENCES Books(book_id),
    quantity DOUBLE
)