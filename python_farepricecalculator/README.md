Python Project – FareCalc Travel Optimizer

#Description

This program is used to calculate fare for rides based on the distance travelled, type of vehicle, and timing of travel. The program contains the concept of surge pricing along with input validation.

#Objective

To design a real-world fare system based on dynamic pricing concepts.

#Features

* Dictionary-based pricing system
* Types of vehicle include:

  * Economy
  * Premium
  * SUV
* Concept of surge pricing (multiplied by 1.5 times) for peak hours (5 PM to 8 PM)
* Validations include:

  * Positive value for distance
  * Type of vehicle validation
  * Timing validation (between 0 to 23 hours)

#Concepts Used

* Function
* Dictionaries
* Conditional statements
* Try and exception
* Input handling from user

#Execution of Program

Execute program as follows:
python farepricecalc.py

Supply necessary inputs:

* Distance
* Vehicle type
* Timing (between 0 to 23)

#Sample Outputs

Enter distance (km): 10
Enter vehicle type (Economy/Premium/SUV): SUV
Enter hour (0-23): 18

-----Ride Receipt-----
Distance: 10km
Vehicle: SUV
Hour: 18
Total Price: ₹375.00

# Key Feature

Dynamic calculation using `calculate_fare` function and surge pricing concept.
