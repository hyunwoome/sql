use leetcode;

Create table If Not Exists Weather (id int, recordDate date, temperature int)
Truncate table Weather
insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10')
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25')
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20')
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30');

SELECT w1.id
FROM Weather AS w1,
     Weather AS w2
WHERE w1.temperature > w2.temperature
  AND w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY);
