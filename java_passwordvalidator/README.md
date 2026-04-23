Java Project - Password Validator (SafeLog)

#Description

This project includes a password validator that makes sure users generate strong passwords according to certain rules.

#Objective

To validate passwords using security guidelines and give relevant feedback about their improvements.

#Features

*Validates minimum length requirement (8 or more characters)
* Checks for:

  * At least one capital letter
  * At least one number
  * At least one special character
* Gives detailed feedback about invalid passwords
* Retry process until the valid password is created

#Concepts Implemented

* Looping structure (for, while loops)
* Conditional structures
* String operations
* Methods from Character class:
  * Character.isUpperCase()
  * Character.isDigit()
* Input using Scanner class

#Running

1. Compile:
   javac PasswordValidator.java
2. Execute:
   java PasswordValidator

#Sample Output

Enter password: abc
Password is too short (Minimum length: 8 characters)
Password needs an upper-case letter
Password needs a digit
Password needs a special character
Please try again.

Enter password: Abc@1234
Password is valid!

#Key Features

The main feature of this project is using a modular approach with a validating function (`isValid`), and giving the user informative feedback.
