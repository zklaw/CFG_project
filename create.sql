-- Create relational DB of your choice with minimum 5 tables
-- Set Primary and Foreign Key constraints to create relations between the tables

CREATE database dog_school;

USE dog_school;

create table owners(
	id int auto_increment,
    name varchar(20),
    surname varchar(20),
    phone int,
    primary key(id)
);

create table dogs(
	id INT auto_increment,
    name varchar(20) ,
    breed varchar(20),
    sex varchar(6) ,
    age int, 
    owner_id int,
    primary key(id), foreign key(owner_id)  REFERENCES owners(id)
);

create table age_groups(
	id int,
    description varchar(30),
    primary key(id)
);

create table courses(
	id int auto_increment,
    name varchar(50),
    description varchar(500),
    age_group int,
    primary key(id), foreign key(age_group) references age_groups(id)
);

create table course_attendees(
	id int auto_increment,
    course_id int,
    dog_id int,
    
    primary key(id),
    foreign key(course_id) references courses(id),
    foreign key(dog_id) references dogs(id)
);
