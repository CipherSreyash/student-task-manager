create database student_task_manager;

use student_task_manager;

create table students(
student_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
gender varchar(20),
mobile_number varchar(20),
email varchar(100),
course_name varchar(100),
admission_date date
);

insert into students(
first_name,
last_name,
gender,
mobile_number,
email,
course_name,
admission_date
)
values(
'Dhruv',
'Mehta',
'Male',
'8879931870',
'dhruv@test.com',
'SQL',
curdate()
),
(
'Sonali',
'Mangute',
'Female',
'8859961524',
'Sonali06@test.com',
'DSA',
curdate()
),
(
'Ankita',
'Nulle',
'Female',
'7589624125',
'ankita206@test.com',
'Python',
curdate()
),
(
'Aniket',
'Jambhlae',
'Male',
'8872725980',
'aniketj2012@test.com',
'Java',
curdate()
),
(
'Sreyash',
'Nandyalakar',
'Male',
'8788799310',
'sreyash@test.com',
'Cloud Computing',
curdate()
);

select * from students;
drop table students;

CREATE TABLE attendance(
attendance_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
attendance_date DATE,
attendance_status VARCHAR(30),
FOREIGN KEY (student_id)
REFERENCES students(student_id)
);

show tables;

CREATE TABLE tasks
(
task_id INT PRIMARY KEY AUTO_INCREMENT,
task_name VARCHAR(200),
task_description TEXT,
maximum_marks INT
);

INSERT INTO tasks
(
task_name,
task_description,
maximum_marks
)
VALUES
(
'Python Assignment',
'Basic Python Practice',
100
);

SELECT * FROM tasks;

CREATE TABLE student_tasks
(
student_task_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
task_id INT,
obtained_marks INT,
submission_date DATE,
FOREIGN KEY (student_id)
REFERENCES students(student_id),
FOREIGN KEY (task_id)
REFERENCES tasks(task_id)
);

show tables; 

ALTER TABLE student_tasks
ADD COLUMN submission_status VARCHAR(50);

describe student_tasks;

ALTER TABLE student_tasks
ADD COLUMN remarks TEXT;

describe student_tasks;