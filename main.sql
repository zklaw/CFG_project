-- Core requirements: (do all)
-- Create relational DB of your choice with minimum 5 tables, Set Primary and Foreign Key constraints to create relations between the tables
-- Created dog_school DB with tables: age_groups, course_attendees, courses, dogs, and owners.
-- See file create

use dog_school;

-- Using any type of the joins create a view that combines multiple tables in a logical way
CREATE VIEW dogsAndOwnersView
AS
SELECT
d.name AS 'dog name', CONCAT(o.name, " ", o.surname) AS 'owner'
FROM dogs d
JOIN owners o
ON
d.owner_id=o.id;

SELECT * FROM dogs;
SELECT * FROM owners;
SELECT * FROM dogsAndOwnersView;

CREATE VIEW dogsAttendingCoursesView
AS
SELECT d.name AS 'Dog name', c.name AS 'Course'
FROM dogs as d
JOIN course_attendees ca ON ca.dog_id = d.id
JOIN courses c ON c.id=ca.course_id
ORDER BY d.name;

-- ADDITIONAL Create a view that uses at least 3-4 base tables;

SELECT * FROM dogs;
SELECT * FROM course_attendees;
SELECT * FROM courses;
SELECT * FROM dogsAttendingCoursesView;

CREATE VIEW numOfDogsInAgeGroupView
AS
SELECT ag.description AS 'Age group', COUNT(d.age) AS 'num of dogs'
FROM age_groups ag
JOIN dogs d ON fnAssignAgeGroup(d.age) = ag.id
group by ag.description;

SELECT * FROM dogs;
SELECT * FROM age_groups;
SELECT * from numOfDogsInAgeGroupView


-- In your database, create a stored function that can be applied to a query in your DB


DELIMITER //
CREATE FUNCTION fnAssignAgeGroup(age INT)
RETURNS int
DETERMINISTIC
BEGIN
	DECLARE age_group int;
	IF age < 6 THEN
		SET age_group = 1;
    ELSEIF (age >= 6 AND age <=12) THEN
		SET age_group = 2;
	ELSEIF age > 12 THEN
		SET age_group = 3;
	END IF;    
	RETURN(age_group);
END//
DELIMITER ;


-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis

SELECT name, age FROM dogs WHERE name='Muffin';
SELECT name, age_group FROM courses;
SELECT * FROM age_groups;

SELECT c.name AS 'Course' 
FROM courses c
WHERE c.age_group = fnAssignAgeGroup((SELECT d.age FROM dogs d WHERE d.name = 'Muffin')) OR c.age_group=4;

SELECT d.name FROM dogs d
WHERE d.id 
IN
	(SELECT ca.dog_id FROM course_attendees ca
	 WHERE course_id =
		(SELECT c.id FROM courses c
         WHERE c.name = 'Puppy Basic Obedience Training'));

-- ADDITIONAL Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis

SELECT breed, COUNT(*) AS 'Number of dogs'
FROM dogs
GROUP BY breed
HAVING COUNT(*)>1;

-- Create DB diagram where all table relations are shown
