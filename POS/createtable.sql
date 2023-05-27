USE LABopen;


CREATE TABLE customer(
    cid CHAR(4) ,
    cname VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    discount DECIMAL CHECK (discount BETWEEN 0.0 AND 15.0),
    PRIMARY KEY (cid)
);

CREATE TABLE agent(
    aid CHAR(4),
    aname VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    comission INT CHECK( comission BETWEEN 0 AND 100 ),
    PRIMARY KEY(aid)
);

CREATE TABLE product(
    pid char(4),
    pname VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    quantity INT CHECK(quantity>0),
    price DECIMAL CHECK(price>0.0),
    PRIMARY KEY(pid)
);

CREATE TABLE orders(
    ordno INT,
    month CHAR(3),
    cid CHAR(4),
    aid CHAR(4),
    pid CHAR(4),
    quantity INT CHECK(quantity>0) NOT NULL,
    amount DECIMAL CHECK(amount>0.0) NOT NULL,
    PRIMARY KEY(ordno),
    FOREIGN KEY(cid) REFERENCES customer(cid),
    FOREIGN KEY(aid) REFERENCES agent(aid),
    FOREIGN KEY (pid) REFERENCES product(pid)
);