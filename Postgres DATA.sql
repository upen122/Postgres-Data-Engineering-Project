CREATE DATABASE delivery_db;

 \c delivery_db

-- Create Tables

CREATE TABLE restaurant_dim (
    restaurant_id SERIAL PRIMARY KEY,
    name TEXT,
    cuisine_type TEXT,
    rating NUMERIC(2,1),
    city TEXT
);

CREATE TABLE customer_dim (
    customer_id SERIAL PRIMARY KEY,
    name TEXT,
    city TEXT,
    gender TEXT,
    signup_date DATE
);

CREATE TABLE deliveries (
    delivery_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer_dim(customer_id),
    restaurant_id INT REFERENCES restaurant_dim(restaurant_id),
    delivery_time_mins INT,
    total_amount NUMERIC(8,2),
    delivery_date DATE
);

-- Insert sample data

INSERT INTO restaurant_dim (name, cuisine_type, rating, city) VALUES
('Pizza Place', 'Italian', 4.5, 'New York'),
('Pizza Palace', 'Italian', 4.5, 'Delhi'),
('Curry House', 'Indian', 4.2, 'Mumbai'),
('Sushi Corner', 'Japanese', 4.8, 'Bangalore'),
('Sushi World', 'Japanese', 4.2, 'San Francisco'),
('Tandoori Treat', 'Indian', 4.1, 'Chicago'),
('Burger Barn', 'American', 3.8, 'Los Angeles'),
('Green Delight', 'Vegan', 4.4, 'Seattle');

INSERT INTO customer_dim (name, city, gender, signup_date) VALUES
('Alice', 'New York', 'F', '2023-01-15'),
('Bob', 'Delhi', 'M', '2023-02-10'),
('Carol', 'Mumbai', 'F', '2023-03-20'),
('Dave', 'Bangalore', 'M', '2023-04-05'),
('Eve', 'San Francisco', 'F', '2023-05-22');

INSERT INTO deliveries (customer_id, restaurant_id, delivery_time_mins, total_amount, delivery_date) VALUES
(1, 1, 30, 25.50, '2024-05-01'),
(2, 2, 45, 40.00, '2024-05-02'),
(3, 3, 35, 30.00, '2024-05-03'),
(4, 4, 25, 50.00, '2024-05-04'),
(5, 5, 40, 45.00, '2024-05-05'),
(1, 1, 28, 22.50, '2024-05-06'),
(2, 6, 50, 38.00, '2024-05-07'),
(3, 7, 33, 27.00, '2024-05-08');
