import UIKit

//===================================================================================================================
//                                                      Functions basics
//===================================================================================================================
 
// basic function format:

func printMyName() {
  print("My name is Matt Galloway.")
}

// How to call a function:

 printMyName()


//===================================================================================================================
//                                                     Function Parameters
//===================================================================================================================

// In this function we have one parameter titles value and is of type Int. When we call the function, it will return the value of type Int we provide in our argument multiplied by "5"

func printMultipleOfFive(value: Int) {
  print("\(value) * 5 = \(value * 5)")
}

printMultipleOfFive(value: 7)


// Multiple Parameters:

func printMultipleOf(multiplier: Int, andValue: Int) {
  print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}

printMultipleOf(multiplier: 5, andValue: 3)

// In this function we provided two parameters seperated by a comma "," given us access to a new operation. We now have the ability to multiple any two Integers.



//If you want to have no external name at all, then you can employ the underscore _, as you’ve seen in previous chapters:


func printMultipleOf(_ multiplier: Int, _ value: Int) {
  print("\(multiplier) * \(value) = \(multiplier * value)")
}

printMultipleOf(6, 6)



// Having a default parameter:

func myDivision(_ number1: Int, _ number2: Int = 2) {
    print("\(number1) / \(number2) = \(number1 / number2)")
}

myDivision(6, 3)

// if we dont provide a value for the second number the default value will be 2:

myDivision(10)

//===================================================================================================================
//                                                       Return Values
//===================================================================================================================

// Returning multiple values using tuples:

func returnTwoValues(_ number1: Int, _ number2: Int) -> (addition: Int, Subtraction: Int) {
    return (number1 + number2, number1 - number2 )
}

let result = returnTwoValues(4, 2)
let addition = result.addition
let subtraction = result.Subtraction

print(addition)


//===================================================================================================================
//                                                    Mini - Exercises
//===================================================================================================================

// 1. Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.

func printFullName(firstName: String, lastName: String) -> String {
   return firstName + " " + lastName
}

let myName = printFullName(firstName: "Daniel", lastName: "Victoria")

print(myName)


func printFullName(_ firstName: String,_ lastName: String) -> String {
   return firstName + " " + lastName
}

printFullName("Oscar", "Victoria")

print(printFullName("Danny", "Vic"))

print(myName.count)


//===================================================================================================================
//                                                Functions as variables
//===================================================================================================================


