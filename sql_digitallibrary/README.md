SQL Project – Digital Library Audit System

#Description

In this SQL project, we have developed a database system for digital library which helps us keep track of issued books and issued record of students.

#Objective

* To check for the issued books and their returns
* To find books that haven't been returned on time
* To analyze the most popular book categories
* To handle inactive student accounts

#Database Schema

  Books

* book_id
* title
* author
* published_date
* pages
* category

  Students

* stu_id
* name
* email (unique)
* enrollment_date
* last_active

     IssuedBooks

* issued_id
* book_id
* student_id
* issue_date
* return_date

#Features

* Relational Database with foreign key support
* Detecting overdue books
* Analyzing popularity of books per category (GROUP BY clause)
* Dynamic tracking of student activity with `last_active` attribute
* Deactivation of inactive student accounts (inactive for more than 3 years)
* Update mechanism for updating last_active dynamically

#Concepts Used

* DDL (CREATE and ALTER Statements)
* DML (INSERT, UPDATE and DELETE Statements)
* JOIN Operations
* Aggregate Functions such as COUNT with GROUP BY Clause
* Subquery Concept
* Date Related Functions

#How to Run

1. Open your MySQL Workbench or VS code (SQL Tools Plugin)
2. Execute the file:
   digital_lib.sql

#Key Highlight

This project has added a few concepts over and above the provided problem statement like last_active etc.
