CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    join_date DATE,
    country VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


-- Customers
INSERT INTO customers VALUES
(1, 'Alice', '2023-01-10', 'USA'),
(2, 'Bob', '2023-02-15', 'USA'),
(3, 'Charlie', '2023-03-01', 'UK'),
(4, 'Daisy', '2023-04-22', 'USA'),
(5, 'Eva', '2023-05-10', 'India');

-- Products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 850.00),
(102, 'Smartphone', 'Electronics', 450.00),
(103, 'Desk Chair', 'Furniture', 120.00),
(104, 'Water Bottle', 'Home', 20.00),
(105, 'Backpack', 'Accessories', 60.00);

-- Orders
INSERT INTO orders VALUES
(1001, 1, '2023-06-01', 910.00),
(1002, 2, '2023-06-03', 60.00),
(1003, 1, '2023-06-05', 450.00),
(1004, 3, '2023-06-10', 120.00),
(1005, 4, '2023-06-12', 20.00);

-- Order Items
INSERT INTO order_items VALUES
(1, 1001, 101, 1),  -- Laptop
(2, 1001, 104, 3),  -- Water Bottle
(3, 1002, 105, 1),  -- Backpack
(4, 1003, 102, 1),  -- Smartphone
(5, 1004, 103, 1),  -- Desk Chair
(7, 1005, 104, 1);  -- Water Bottle
