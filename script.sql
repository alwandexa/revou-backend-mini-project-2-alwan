-- Create new database
CREATE DATABASE revou;

USE revou;

-- Create Products table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    quantity INT NOT NULL,
    category VARCHAR(100)
);

-- Create Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    address VARCHAR(255)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date DATE NOT NULL,
    shipping_address VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert data into Products table
INSERT INTO
    Products (name, description, quantity, category)
VALUES
    (
        'Product 1',
        'This is the description for Product 1',
        10,
        'Category A'
    ),
    (
        'Product 2',
        'This is the description for Product 2',
        2,
        'Category B'
    ),
    (
        'Product 3',
        'This is the description for Product 3',
        3,
        'Category A'
    );

-- Insert data into Users table
INSERT INTO
    Users (first_name, last_name, email, password, address)
VALUES
    (
        'John',
        'Doe',
        'john.doe@example.com',
        'password123',
        '123 Main St, City, State'
    ),
    (
        'Jane',
        'Smith',
        'jane.smith@example.com',
        'password456',
        '456 Oak Rd, Town, Country'
    ),
    (
        'Michael',
        'Johnson',
        'michael.johnson@example.com',
        'password789',
        '789 Maple Ave, Village, Region'
    );

-- Insert data into Orders table
INSERT INTO
    Orders (
        user_id,
        product_id,
        order_date,
        shipping_address
    )
VALUES
    (
        1,
        1,
        '2023-04-01',
        '123 Main St, City, State'
    ),
    (
        2,
        1,
        '2023-04-02',
        '456 Oak Rd, Town, Country'
    ),
    (
        3,
        2,
        '2023-04-03',
        '789 Maple Ave, Village, Region'
    );

-- Script to create new order
start transaction;

SELECT
    *
FROM
    Products p
WHERE
    product_id = 1 FOR
UPDATE
;

UPDATE
    Products
SET
    quantity = quantity - 1
WHERE
    product_id = 1;

INSERT INTO
    Orders (user_id, product_id, order_date)
VALUES
    (1, 1, CURRENT_DATE());

commit;