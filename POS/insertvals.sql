INSERT INTO agent (aid, aname, city, comission)
VALUES
    ('a01', 'Sonu', 'NewDelhi', 6.00),
    ('a02', 'John', 'Agra', 6.00),
    ('a03', 'Bhargav', 'Jaipur', 7.00),
    ('a04', 'Gaurav', 'NewDelhi', 6.00),
    ('a05', 'Omkar', 'Srinagar', 5.00),
    ('a06', 'Sonu', 'Darjeling', 5.00);

INSERT INTO product (pid, pname, city, quantity, price)
VALUES
    ('p01', 'comb', 'Darjeling', 100000, 10),
    ('p02', 'brush', 'Agra', 200000, 20),
    ('p03', 'eraser', 'Srinagar', 150000, 2),
    ('p04', 'pen', 'Srinagar', 100000, 15),
    ('p05', 'pencil', 'Darjeling', 170000, 3),
    ('p06', 'folder', 'Darjeling', 180000, 15),
    ('p07', 'Highlighter', 'Agra', 180000, 20);

INSERT INTO customer (cid, cname, city, discount)
VALUES
    ('c001', 'Sobhit', 'Darjeling', 10.00),
    ('c002', 'Bhanu', 'Srinagar', 12.00),
    ('c003', 'Amar', 'Srinagar', 8.00),
    ('c004', 'Anand', 'Darjeling', 8.00),
    ('c005', 'Anand', 'Mumbai', 0.00);

INSERT INTO orders (ordno, month, cid, aid, pid, quantity, amount)
VALUES
    (1011, 'jan', 'c001', 'a01', 'p01', 1000, 9400),
    (1012, 'jan', 'c001', 'a01', 'p01', 1000, 9400),
    (1013, 'jan', 'c002', 'a03', 'p03', 1000, 1860),
    (1014, 'jan', 'c003', 'a03', 'p05', 1200, 3348),
    (1015, 'jan', 'c003', 'a03', 'p05', 1200, 3348),
    (1016, 'jan', 'c005', 'a01', 'p01', 1000, 9400),
    (1017, 'feb', 'c001', 'a02', 'p02', 400, 7520),
    (1018, 'feb', 'c001', 'a03', 'p04', 600, 2232),
    (1019, 'feb', 'c001', 'a02', 'p02', 400, 7520),
    (1020, 'feb', 'c005', 'a03', 'p07', 600, 11160),
    (1021, 'feb', 'c004', 'a06', 'p01', 1000, 9500),
    (1022, 'mar', 'c001', 'a05', 'p06', 400, 5700),
    (1023, 'mar', 'c001', 'a04', 'p05', 500, 1410),
    (1024, 'mar', 'c005', 'a06', 'p01', 800, 7600),
    (1025, 'Apr', 'c001', 'a05', 'p07', 800, 15200);
