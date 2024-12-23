create database payment;
use payment;
CREATE TABLE orders (
    ord_no INT PRIMARY KEY,                -- Order number
    purch_amt DECIMAL(10, 2),              -- Purchase amount with two decimal places
    ord_date DATE,                         -- Order date
    customer_id INT,                       -- Customer ID
    salesman_id INT                        -- Salesman ID
);
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
    (70001, 150.50, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70002, 65.26, '2012-10-05', 3002, 5001),
    (70004, 110.50, '2012-08-17', 3009, 5003),
    (70007, 948.50, '2012-09-10', 3005, 5002),
    (70005, 2400.60, '2012-07-27', 3007, 5001),
    (70008, 5760.00, '2012-09-10', 3002, 5001),
    (70010, 1983.43, '2012-10-10', 3004, 5006),
    (70003, 2480.40, '2012-10-10', 3009, 5003),
    (70012, 250.45, '2012-06-27', 3008, 5002),
    (70011, 75.29, '2012-08-17', 3003, 5007),
    (70013, 3045.60, '2012-04-25', 3002, 5001);
select * from orders;
select ord_date,salesman_id from orders group by ord_date,salesman_id;
select ord_date,count(salesman_id) as salesman_count from orders group by ord_date;
select ord_date,count(distinct salesman_id) as salesman_count from orders group by ord_date;
select purch_amt,salesman_id from orders order by purch_amt,salesman_id;

