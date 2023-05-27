-- CREATE TABLE Department (
--     dname VARCHAR(15),
--     dnumber INT,
--     PRIMARY KEY (dnumber)
-- );


-- INSERT INTO Department
-- VALUES ('Research', 1),
--        ('HR', 2),
--        ('Development', 3),
--        ('Testing', 4);


-- CREATE TABLE Employee (
--     ssn CHAR(9) NOT NULL,
--     name VARCHAR(15) NOT NULL,
--     salary DECIMAL(10, 2),
--     sex CHAR,
--     address VARCHAR(30),
--     dno INT NOT NULL,
--     PRIMARY KEY (ssn),
--     FOREIGN KEY (dno) REFERENCES Department (dnumber)
-- );

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp001', 'Ram', 30000, 'M', 'RT Nagar, Blore', 3);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp002', 'Sudha', 75000, 'F', 'Hebbal, Blore', 2);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp003', 'Ravi', 20000, 'M', 'Hebbal, Blore', 4);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp004', 'Rohan', 80000, 'M', 'RT Nagar, Mysore', 1);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp005', 'Amar', 35000, 'M', 'MG Road, Mysore', 3);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp006', 'Anil', 45000, 'M', 'MG Road, Noida', 3);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp007', 'Tanya', 35000, 'F', 'Yelahanka, Blore', 3);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp008', 'Kavita', 50000, 'F', 'Baglur, Blore', 1);

-- INSERT INTO Employee (ssn, name, salary, sex, address, dno)
-- VALUES ('emp009', 'John', 45000, 'M', 'RT Nagar, Blore', 4);

-- ALTER TABLE Employee
-- ADD super_ssn CHAR(9) REFERENCES Employee(ssn);

-- UPDATE Employee
-- SET super_ssn = 'emp006'
-- WHERE ssn = 'emp001';

-- UPDATE Employee
-- SET super_ssn = 'emp008'
-- WHERE ssn = 'emp003';

-- UPDATE Employee
-- SET super_ssn = 'emp002'
-- WHERE ssn = 'emp005';

-- UPDATE Employee
-- SET super_ssn = 'emp008'
-- WHERE ssn = 'emp006';

-- UPDATE Employee
-- SET super_ssn = 'emp008'
-- WHERE ssn = 'emp007';

-- UPDATE Employee
-- SET super_ssn = 'emp004'
-- WHERE ssn = 'emp008';

-- UPDATE Employee
-- SET super_ssn = 'emp008'
-- WHERE ssn = 'emp009';


-- ALTER TABLE Department
-- ADD mgr_ssn CHAR(9) REFERENCES Employee(ssn);


-- UPDATE Department
-- SET mgr_ssn = 'emp004'
-- WHERE dnumber = 1;

-- UPDATE Department
-- SET mgr_ssn = 'emp002'
-- WHERE dnumber = 2;

-- UPDATE Department
-- SET mgr_ssn = 'emp006'
-- WHERE dnumber = 3;

-- UPDATE Department
-- SET mgr_ssn = 'emp009'
-- WHERE dnumber = 4;


-- CREATE TABLE Dept_Location (
--     dnumber INT NOT NULL,
--     dlocation VARCHAR(15) NOT NULL,
--     PRIMARY KEY (dnumber, dlocation),
--     FOREIGN KEY (dnumber) REFERENCES Department(dnumber)
-- );


-- CREATE TABLE Project (
--     pname VARCHAR(15) NOT NULL,
--     pnumber VARCHAR(5) NOT NULL,
--     plocation VARCHAR(15),
--     dnum INT NOT NULL,
--     PRIMARY KEY (pnumber),
--     UNIQUE (pname),
--     FOREIGN KEY (dnum) REFERENCES Department(dnumber)
-- );


-- CREATE TABLE Workson (
--     essn CHAR(9) NOT NULL,
--     pno VARCHAR(5) NOT NULL,
--     hours DECIMAL(3, 1) NOT NULL,
--     PRIMARY KEY (essn, pno),
--     FOREIGN KEY (essn) REFERENCES Employee(ssn),
--     FOREIGN KEY (pno) REFERENCES Project(pnumber)
-- );

-- CREATE TABLE Dependent (
--     essn CHAR(9) NOT NULL,
--     dependent_name VARCHAR(15) NOT NULL,
--     sex CHAR,
--     relationship VARCHAR(8),
--     PRIMARY KEY (essn, dependent_name),
--     FOREIGN KEY (essn) REFERENCES Employee(ssn)
-- );


-- INSERT INTO Dept_Location (DNUMBER, DLOCATION)
-- VALUES (1, 'Blore'),
--        (2, 'Blore'),
--        (3, 'Blore'),
--        (3, 'Mysore'),
--        (4, 'Noida'),
--        (4, 'Blore');

-- INSERT INTO Project (PNAME, PNUMBER, PLOCATION, DNUM)
-- VALUES ('Banking', 'p01', 'Blore', 3),
--        ('Android App', 'p02', 'Mysore', 3),
--        ('WSN', 'p03', 'Blore', 4),
--        ('Robotics', 'p04', 'Noida', 4),
--        ('Smart Vehicle', 'p05', 'Blore', 3);


-- INSERT INTO Workson (ESSN, PNO, HOURS)
-- VALUES ('emp001', 'p01', 14),
--        ('emp003', 'p01', 10),
--        ('emp001', 'p02', 7),
--        ('emp005', 'p03', 18),
--        ('emp003', 'p02', 14),
--        ('emp004', 'p05', 12),
--        ('emp007', 'p04', 14),
--        ('emp001', 'p05', 12);


-- INSERT INTO Dependent (ESSN, dependent_name, SEX, relationship)
-- VALUES ('emp001', 'Raghu', 'M', 'son'),
--        ('emp004', 'Reshma', 'F', 'wife'),
--        ('emp007', 'Bindu', 'F', 'daughter'),
--        ('emp009', 'Shaan', 'M', 'son'),
--        ('emp009', 'Shamir', 'M', 'son');
