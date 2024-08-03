-- Create a table for products
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    price REAL NOT NULL
);

-- Create a table for users (optional, for managing user data)
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

INSERT INTO products (name, description, price) VALUES ('Product1', 'Description of Product 1', 100.00);
INSERT INTO products (name, description, price) VALUES ('Product2', 'Description of Product 2', 150.00);

SELECT * FROM products;