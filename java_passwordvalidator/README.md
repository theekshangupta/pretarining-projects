# Java Project – Password Validator (SafeLog)

##  Description

This project implements a password validation system that checks whether a given password satisfies specific security requirements.

##  Objective

To ensure strong password creation by validating:

* Minimum length of 8 characters
* At least one uppercase letter
* At least one numeric digit

##  Features

* Character-by-character validation using loops
* Uses `Character.isUpperCase()` and `Character.isDigit()`
* Provides specific feedback (e.g., "Missing digit", "Too short")
* Retry mechanism using loop until valid password is entered

##  Concepts Used

* Loops (for, while)
* Conditional statements
* String manipulation
* Basic input handling

## ▶ How to Run

1. Compile the program:
   javac PasswordValidator.java
2. Run the program:
   java PasswordValidator

##  Output

The program continuously prompts the user until a valid password is entered.
