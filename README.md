# CFG project
Code First Girls | Introduction to SQL &amp; Data final project

The project contains a dog school database with 5 tables - owners, dogs, course_attendees, courses, age_groups

![EER Diagram](https://github.com/zklaw/CFG_project/blob/main/project_diagram.png)

---
## Sample rows from the database

### owners
| id  | name | surname | phone |
| --- | ---- | ------- | ----- |
| 1 | Olivia | Anderson | phone |

### dogs 
| id  | name | breed | sex | age (in months) | owner_id|
| --- | ---- | ----- | --- | --- | ------- |
| 1	  |Simon | Chihuahua	| male	| 10	| 7 |

### course_attendees
| id | course_id | dog_id |
| -- | --------- | ------ |
| 1 | 1 | 6 |


### courses
| id | name | description | age_group | 
| -- | ---- | ----------- | --------- |
|1 | Puppy Basic Obedience Training | This course is perfect for new dog owners.\n Your furry friend will learn essential commands like sit, stay, come, and leash manners.\n Through positive reinforcement techniques, we\'ll help your dog become a well-behaved companion. | 1 |



### age_groups
| id | description |
| -- | ----------- |
| 1 | under 6 months |

----

Project requirements:

- Create relational DB of your choice with minimum 5 tables
- Set Primary and Foreign Key constraints to create relations between the tables
- Using any type of the joins create a view that combines multiple tables in a logical way
- In your database, create a stored function that can be applied to a query in your DB
- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
- Create a view that uses at least 3-4 base tables;
- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis


