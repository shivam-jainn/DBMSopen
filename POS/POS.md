> * Customer (cid, cname, city, discount)
> * Agent (aid,aname, city, commission)
> * Product(pid, pname, city, quantity, price)
> * Orders (ordno, month, cid, aid, pid, qty, amount)


# CUSTOMER

Original : 

```
CREATE TABLE customer(
    cid CHAR(4) ,
    cname VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    discount REAL ,
);
```


### What is REAL .

> In MySQL, the REAL data type is used to store single-precision floating-point numbers. It is a 4-byte data type that can represent a wide range of values with moderate precision. 
> The REAL data type is also known as FLOAT or FLOAT(24).

### What is the difference between REAL and FLOAT
- **Float and real are interchangeable . They are the same thing.**


- `FLOAT`/`REAL`: Suitable for scientific and engineering calculations where approximate values are acceptable.
- `DECIMAL`: Used in applications requiring precise decimal calculations, such as financial systems.
- `DOUBLE`: Ideal for applications that demand higher precision, such as complex mathematical calculations or scientific simulations.

### Modified SQL query 

```
CREATE TABLE customer(
    cid CHAR(4) ,
    cname VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    discount DECIMAL,
    CHECK (discount BETWEEN 0.0 AND 15.0),
);

```


#### CHECK
> We can use check multiple times like this :
```
CREATE TABLE products (
  id INT,
  name VARCHAR(50),
  price DECIMAL(10, 2),
  discount DECIMAL(5, 2),
  CHECK (discount >= 0.0 AND discount <= 15.0),
  CHECK (price > 0.0)
);
```

^ This is not related to table , it's just an example to show how we can use check()


## FOREIGN KEY
* Tables created are 2 -> 1) Customers 2) Orders
* Foreign key :
 customer_id from Orders table
   <---- references ---->  customer_id from Customers table 
