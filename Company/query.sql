-- SELECT name
-- FROM Employee
-- WHERE salary = (
--     SELECT salary
--     FROM Employee
--     ORDER BY salary DESC
--     LIMIT 1 OFFSET 1
-- );


-- 3)

-- SELECT * FROM Employee 
-- LEFT JOIN Dependent ON Dependent.essn = Employee.ssn
-- WHERE Dependent.essn IS NULL;

-- 4)

-- SELECT name FROM Employee
-- WHERE ssn IN (
--     SELECT essn FROM Dependent
-- GROUP BY essn
-- HAVING COUNT(essn)>=2
-- );

-- 5)
-- SELECT dno,COUNT(*),AVG(salary) FROM Employee
-- GROUP BY dno;

-- 6) 

--  SELECT dno,COUNT(*),MAX(salary) FROM Employee
-- GROUP BY dno
-- ORDER BY MAX(salary)
-- ;

-- 7)
--  SELECT DISTINCT e.ssn FROM Employee e,Workson w
--  WHERE e.ssn IN (
--    SELECT DISTINCT w.essn FROM Workson w
-- WHERE w.pno IN ('p01', 'p02', 'p03')
--  );


-- 8)
--  SELECT COUNT(essn) FROM Dependent
--  JOIN Employee ON Dependent.essn = Employee.ssn
--  WHERE name = 'Ram'
--  GROUP BY essn
--  ;

-- 9)
--  SELECT name FROM Employee
--  WHERE salary >  (
-- SELECT MAX(salary) FROM Employee
--  WHERE dno=3
--  );

-- 10) 

    -- SELECT Employee.name FROM Employee
    -- JOIN Dependent ON essn=ssn
    -- WHERE Dependent.sex = 'F' AND dno=3
    -- ;

-- 11)
    -- SELECT name FROM Employee
    -- WHERE salary = (
    --         SELECT (salary) FROM Employee
    --         WHERE name='Anil'
    --     ) AND name!='Anil'
    -- ;

    

    -- 12)
    -- SELECT count(ssn) FROM Employee
    -- GROUP BY dno
    -- HAVING dno = (SELECT dnumber FROM Department
    -- WHERE dname = 'Research');

    -- 13 
--  SELECT pno,COUNT(essn),pname FROM Workson
--  JOIN Project ON pno = pnumber
--  GROUP BY pno;