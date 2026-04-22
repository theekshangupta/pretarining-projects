# SQL Project – Digital Library Audit System

## Description

This project models a digital library system to track book issuance and analyze borrowing data.

## Objective

* Identify overdue books
* Analyze most popular book categories
* Manage inactive student records

## Database Structure

### Tables:

* Books (book details)
* Students (student information)
* IssedBooks (book issue records)

## Features

* Relational schema using foreign keys
* Overdue book detection (books not returned within 14 days)
* Category-wise popularity analysis using GROUP BY
* Cleanup of inactive users

## Concepts Used

* DDL (CREATE TABLE)
* DML (INSERT, DELETE)
* Joins
* Aggregations (COUNT, GROUP BY)
* Date functions

##  How to Run

1. Open MySQL Workbench or VS Code (SQLTools)
2. Run the `digital_library.sql` file

##  Output

* List of overdue books
* Most borrowed categories
* Updated student records after cleanup
