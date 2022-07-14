USE leetcode;
CREATE TABLE IF NOT EXISTS Person
(
    Id    int,
    Email varchar(255)
);
TRUNCATE TABLE Person
INSERT INTO Person (id, email)
VALUES ('1', 'john@example.com')
INSERT INTO Person (id, email)
VALUES ('2', 'bob@example.com')
INSERT INTO Person (id, email)
VALUES ('3', 'john@example.com');

DELETE p1 FROM Person p1,
               Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id;

SELECT * FROM Person;