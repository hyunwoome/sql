USE leetcode;
CREATE TABLE IF NOT EXISTS Salary
(
    id     int,
    name   varchar(100),
    sex    char(1),
    salary int
);
TRUNCATE TABLE Salary
INSERT INTO Salary (id, name, sex, salary)
VALUES ('1', 'A', 'm', '2500')
INSERT INTO Salary (id, name, sex, salary)
VALUES ('2', 'B', 'f', '1500')
INSERT INTO Salary (id, name, sex, salary)
VALUES ('3', 'C', 'm', '5500')
INSERT INTO Salary (id, name, sex, salary)
VALUES ('4', 'D', 'f', '500');

UPDATE Salary set sex = if (sex='m', 'f', 'm');
SELECT * FROM Salary;

DROP TABLE Salary