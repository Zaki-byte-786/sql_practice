-- Create payment table
create database paymentdb;
use paymentdb;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique user identifier
    user_name VARCHAR(100) NOT NULL,         -- User's name
    email VARCHAR(100) UNIQUE,               -- User's email (must be unique)
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP -- Timestamp for when the user was created
);
INSERT INTO users (user_name, email)
VALUES 
    ('John Doe', 'john@example.com'),
    ('Jane Smith', 'jane@example.com'),
    ('Alice Johnson', 'alice@example.com');

CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique payment identifier
    user_id INT NOT NULL,                       -- Foreign key to the user who made the payment
    amount DECIMAL(10, 2) NOT NULL,             -- Payment amount with 2 decimal precision
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP, -- Timestamp of when the payment was made
    payment_method VARCHAR(50) NOT NULL,        -- Method of payment (e.g., Credit Card, PayPal)
    payment_status VARCHAR(20) NOT NULL CHECK (payment_status IN ('Pending', 'Completed', 'Failed')), -- Status of the payment
    remarks VARCHAR(255),                       -- Optional remarks or comments about the payment
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(user_id) -- Assuming you have a 'users' table
);

-- Insert sample data into the payment table
INSERT INTO payment (user_id, amount, payment_method, payment_status, remarks)
VALUES 
    (1, 100.50, 'Credit Card', 'Completed', 'Payment for Order #123'),
    (2, 250.00, 'PayPal', 'Pending', 'Payment for Order #456'),
    (3, 50.75, 'Debit Card', 'Failed', 'Payment declined by the bank');
    select * from payment;
select payment_method,sum(amount) as total_amount from payment group by payment_method;
select payment_status,count(payment_id) from payment group by payment_status;
select user_id,amount from payment group by user_id,amount;

-- combination of multiple column
select payment_id,amount,(payment_id*amount) as product from payment;
select (payment_id*amount) as product,payment_id,amount from payment;

-- round off function
select round(payment_id/amount,1) as product,payment_id,amount from payment;
 select round(1245,-3);
 select round(1245,-2);
 select round(1245,-1);
 select round(1245,-3),round(1245,-2),round(1245,-1);
 
 -- ceil , floor function
 select ceil(12.48);
 select floor(12.49);
 
 -- concat function
create table name(
first_name varchar(50),
last_name varchar(50));
insert into name(first_name,last_name)
values 
("Fahad","Khan"),("Ashraf","Shafique");
select * from name;
select concat(first_name," ",last_name) as full_name from name;

 -- upper and lower function
 select upper(concat(first_name," ",last_name)) as full_name from name;
 select lower(concat(first_name," ",last_name)) as full_name from name;
 
 -- Where clause
 select * from payment where payment_status = "Failed";
 select * from payment;  
 
 
 