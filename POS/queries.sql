-- 1) Retrieve the customer ids of any product which has been ordered by agent "a06".
-- SELECT cid FROM orders WHERE aid='a06';
/*
 OUTPUT 1 :
 
 +-------+
 |  cid  |
 +-------+
 | c004  |
 | c005  |
 +-------+
 
 */
--  2)  Retrieve cities in which customers or agents located.
-- SELECT DISTINCT city FROM agent UNION SELECT DISTINCT city FROM customer;
/*
 
 OUTPUT 2 :
 
 -----------------
 |     city      |
 -----------------
 |   NewDelhi    |
 |     Agra      |
 |    Jaipur     |
 |   Srinagar    |
 |  Darjeling    |
 |    Mumbai     |
 -----------------
 
 */
-- 3) List product ids which have been ordered by agents from the cities “Dargeling” or “Srinagar”.
-- SELECT DISTINCT pid FROM orders WHERE aid IN (SELECT aid FROM agent WHERE city IN ('Darjeling', 'Srinagar'));
/*
 output 3 :
 
 +-----+
 | pid |
 +-----+
 | p06 |
 | p07 |
 | p01 |
 +-----+
 
 */
-- 4) Retrieve customer ids whose discounts are less than the maximum discount.
-- SELECT cid FROM customer 
-- WHERE discount<(SELECT MAX(discount) FROM customer);
/*
 
 output 4 :
 
 +------+
 | cid  |
 +------+
 | c001 |
 | c003 |
 | c004 |
 | c005 |
 +------+
 
 
 */
-- 5) Retrieve product ids ordered by at least two customers.
-- SELECT pid 
-- FROM (
--    SELECT pid, COUNT(DISTINCT cid) AS nod
--     FROM orders
--     GROUP BY pid
-- ) subquery
-- WHERE nod>=2
-- ;
-- 6) For each (aid,pid) pair get the sum of the orders aid has placed for pid
--   SELECT aid,pid,sum(quantity)
--   FROM orders
--   GROUP BY aid,pid
--   ORDER BY aid
--   ;
/*
 o/p 6:
 
 +-----+-----+--------+
 | aid | pid | sum(quantity) |
 +-----+-----+--------+
 | a01 | p01 |    3000    |
 | a02 | p02 |    800     |
 | a03 | p03 |    1000    |
 | a03 | p04 |    600     |
 | a03 | p05 |    2400    |
 | a03 | p07 |    600     |
 | a04 | p05 |    500     |
 | a05 | p06 |    400     |
 | a05 | p07 |    800     |
 | a06 | p01 |    1800    |
 +-----+-----+--------+
 
 
 */
-- 7) Retrieve product ids and total quantity ordered for each product when the total exceeds 1000.
--    SELECT pid,aid,SUM(quantity) AS tot
-- FROM orders
--     GROUP BY pid,aid
--     HAVING tot>1000
-- ;
/* 
 o/p 7:
 
 +-----+-----+-----+
 | pid | aid | tot |
 +-----+-----+-----+
 | p01 | a01 | 3000|
 | p05 | a03 | 2400|
 | p01 | a06 | 1800|
 +-----+-----+-----+
 
 
 
 */
-- 8) List the names of the customers and agent who placed an order through that agent
-- SELECT DISTINCT agent.aname , customer.cname 
-- FROM agent,customer,orders
-- WHERE customer.cid = orders.cid AND agent.aid = orders.aid;
/* 
 
 +------+-------+-----------+----------+
 | cid  | cname | city      | discount |
 +------+-------+-----------+----------+
 | c001 | Sobhit| Darjeling | 10       |
 | c002 | Bhanu | Srinagar  | 12       |
 | c003 | Amar  | Srinagar  | 8        |
 | c004 | Anand | Darjeling | 8        |
 | c005 | Anand | Mumbai    | 0        |
 +------+-------+-----------+----------+
 
 
 
 */
-- 9) Retrieve the order numbers placed by customers in "Dargeling" through agents in "NewDelhi".
-- SELECT ordno FROM orders
-- JOIN customer ON customer.cid = orders.cid
-- JOIN agent ON orders.aid = agent.aid
-- WHERE customer.city = 'Darjeling' AND agent.city = 'NewDelhi'
-- ;
/* 
 o/p 9 :
 +-------+
 | ordno |
 +-------+
 |  1011 |
 |  1012 |
 |  1023 |
 +-------+
 
 */

--  10) Retrieve names of the customers who have the same discount as that of any (one) of the customers in "Dargeling" or "Bangalore".

            -- SELECT cname FROM customer
            -- WHERE discount IN (SELECT discount FROM customer WHERE city = "Darjeling" OR city = "Bangalore");

--  11) Retrieve customer ids with smaller discounts than every customer from " Srinagar”

    --  SELECT cid FROM customer
    --         WHERE discount < ALL(SELECT discount FROM customer WHERE city = "Srinagar" );

--  12) Retrieve names of the customers who have placed an order through agent "a05" (using exists )
        -- SELECT customer.cname 
        -- FROM orders
        -- JOIN customer ON customer.cid = orders.cid
        -- JOIN agent ON agent.aid = orders.aid
        -- WHERE agent.aid = 'a05'
        -- ;

        -- OR ///// -----
        
        -- SELECT customer.cname 
        -- FROM customer 
        -- WHERE  EXISTS(SELECT * FROM orders WHERE orders.aid = 'a05' AND customer.cid = orders.cid);
--  13)
-- SELECT customer.cname, customer.cid , agent.aid,agent.aname,SUM(orders.amount) AS totalamt FROM agent,customer,orders
-- WHERE agent.aid = orders.aid AND customer.cid = orders.cid
-- GROUP BY customer.cname, customer.cid , agent.aid,agent.aname
-- HAVING totalamt>9000
-- ORDER BY totalamt DESC
-- ;


-- 14)

