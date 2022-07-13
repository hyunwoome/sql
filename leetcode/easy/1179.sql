USE leetcode;
CREATE TABLE IF NOT EXISTS Department
(
    id      int,
    revenue int,
    month   varchar(5)
);
TRUNCATE TABLE Department
INSERT INTO Department (id, revenue, month)
VALUES ('1', '8000', 'Jan')
INSERT INTO Department (id, revenue, month)
VALUES ('2', '9000', 'Jan')
INSERT INTO Department (id, revenue, month)
VALUES ('3', '10000', 'Feb')
INSERT INTO Department (id, revenue, month)
VALUES ('1', '7000', 'Feb')
INSERT INTO Department (id, revenue, month)
VALUES ('1', '6000', 'Mar');

SELECT *
FROM Department;

SELECT id,
       SUM(IF(month = 'Jan', revenue, NULL)) AS Jan_Revenue,
       SUM(IF(month = 'feb', revenue, NULL)) AS Feb_Revenue,
       SUM(IF(month = 'mar', revenue, NULL)) AS Mar_Revenue,
       SUM(IF(month = 'apr', revenue, NULL)) AS Apr_Revenue,
       SUM(IF(month = 'may', revenue, NULL)) AS May_Revenue,
       SUM(IF(month = 'jun', revenue, NULL)) AS Jun_Revenue,
       SUM(IF(month = 'jul', revenue, NULL)) AS Jul_Revenue,
       SUM(IF(month = 'aug', revenue, NULL)) AS Aug_Revenue,
       SUM(IF(month = 'sep', revenue, NULL)) AS Sep_Revenue,
       SUM(IF(month = 'oct', revenue, NULL)) AS Oct_Revenue,
       SUM(IF(month = 'nov', revenue, NULL)) AS Nov_Revenue,
       SUM(IF(month = 'dec', revenue, NULL)) AS Dec_Revenue
FROM Department
GROUP BY id;