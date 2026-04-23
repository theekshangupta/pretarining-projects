CREATE DATABASE IF NOT EXISTS digital_lib;
USE digital_lib;

create table books (
    book_id int primary key auto_increment,
    title varchar(100) not null,
    author varchar(100) not null,
    published_date date,
    pages int,
    category varchar(100)
);

create table students (
    stu_id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) not null unique,
    enrollment_date date
);


create table issuedbooks (
    issued_id int primary key auto_increment,
    book_id int,
    student_id int,
    issue_date date,
    return_date date,
    foreign key (book_id) references books(book_id),
    foreign key (student_id) references students(stu_id)
);

INSERT INTO books (title, author, published_date, pages, category) VALUES
('Java Basics', 'James Gosling', '2015-06-10', 350, 'Programming'),
('Python Guide', 'Guido van Rossum', '2018-09-15', 400, 'Programming'),
('History of India', 'Ram Sharma', '2010-01-20', 500, 'History'),
('Science Today', 'Arun Kumar', '2020-11-05', 300, 'Science');

INSERT INTO students (name, email, enrollment_date) VALUES
('Rahul', 'rahul@gmail.com', '2020-01-10'),
('Anjali', 'anjali@gmail.com', '2023-03-15'),
('Kiran', 'kiran@gmail.com', '2022-06-20'),
('Sita', 'sita@gmail.com', '2023-09-25'),
('Ravi', 'raavi@gmail.com', '2024-02-05');

INSERT INTO issuedbooks (book_id, student_id, issue_date, return_date) VALUES
(1, 1, '2020-03-01', '2020-03-15'),          
(2, 2, '2024-03-10', '2024-03-15'),  
(3, 3, '2023-01-01', NULL),
(4, 4, '2023-10-01', '2023-10-15'),
(1, 5, '2024-02-20', NULL),
(2, 3, '2024-03-01', NULL);          

ALTER TABLE students
ADD last_active DATE;

UPDATE students SET last_active = '2020-03-15' WHERE stu_id = 1;
UPDATE students SET last_active = '2024-03-15' WHERE stu_id = 2;
UPDATE students SET last_active = CURRENT_DATE WHERE stu_id = 3;
UPDATE students SET last_active = '2023-10-15' WHERE stu_id = 4;
UPDATE students SET last_active = CURRENT_DATE WHERE stu_id = 5;
SELECT * FROM books;
SELECT * FROM students;
SELECT * FROM issuedbooks;

INSERT INTO books (title, author, published_date, pages, category) VALUES
('Data Structures', 'Mark Allen', '2016-07-12', 420, 'Programming'),
('World Geography', 'John Smith', '2012-03-18', 380, 'Geography'),
('Physics Fundamentals', 'Albert Newton', '2019-08-25', 450, 'Science');

INSERT INTO students (name, email, enrollment_date, last_active) VALUES
('Arjun', 'arjun@gmail.com', '2021-07-10', CURRENT_DATE),
('Meena', 'meena@gmail.com', '2020-05-12', '2023-05-20'),
('Vikram', 'vikram@gmail.com', '2022-11-20', CURRENT_DATE);

INSERT INTO issuedbooks (book_id, student_id, issue_date, return_date) VALUES
(5, 6, '2024-01-10', NULL),
(6, 7, '2023-05-01', '2023-05-20'),
(7, 8, '2022-02-15', NULL);

SELECT *
FROM issuedbooks
WHERE return_date IS NULL
AND issue_date < CURRENT_DATE - INTERVAL 14 DAY;

SELECT b.category, COUNT(*) AS total_issued
FROM IssuedBooks ib
JOIN Books b ON ib.book_id = b.book_id
GROUP BY b.category
ORDER BY total_issued DESC;


DELETE FROM students
WHERE last_active IS NOT NULL
AND last_active < CURRENT_DATE - INTERVAL 3 YEAR;

UPDATE students s
SET last_active = (
    CASE
        WHEN EXISTS (
            SELECT 1 
            FROM issuedbooks ib 
            WHERE ib.student_id = s.stu_id 
            AND ib.return_date IS NULL
        )
        THEN CURRENT_DATE

        ELSE COALESCE(
            (SELECT MAX(ib.return_date)
             FROM issuedbooks ib
             WHERE ib.student_id = s.stu_id),
            s.enrollment_date
        )
    END
);