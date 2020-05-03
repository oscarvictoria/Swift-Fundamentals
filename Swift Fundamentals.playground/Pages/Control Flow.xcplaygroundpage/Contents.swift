import UIKit

var str = "Hello, playground"

//==========================================================================================================
//                                                     Bools
//==========================================================================================================

// Mini Exercisies:

// 1. Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.

let myAge = 21
let isTeenager = myAge > 13 && myAge < 19

// 2. Create another constant named theirAge and set it to my age, which is 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and I are teenagers.

let theirAge = 30
let bothTeenagers = (myAge > 13 && myAge < 19) || (theirAge > 13 && theirAge < 19)

// 3. Create a constant named reader and set it to your name as a string. Create a constant named author and set it to my name, Matt Galloway. Create a constant named authorIsReader that uses string equality to determine if reader and author are equal.

let reader = "Danny"
let author = "Matt Galloway"
let authorIsReader = reader == author

// 4. Create a constant named readerBeforeAuthor which uses string comparison to determine if reader comes before author.

let readerBeforeAuthor = reader > author

//==========================================================================================================
//                                                        The if statement
//==========================================================================================================


// Encapsulating variables: if statements introduce a new concept scope, which is a way to encapsulate variables through the use of braces

/*
 You earn $25 for every hour up to 40 hours, and $50 for every hour thereafter.
 Using Swift, you can calculate your fee in this way:
 
var hoursWorked = 45
 var price = 0
 if hoursWorked > 40 {
   let hoursOver40 = hoursWorked - 40
   price += hoursOver40 * 50
   hoursWorked -= hoursOver40
 }
 price += hoursWorked * 25
 print(price)
 

 This code takes the number of hours and checks if it’s over 40. If so, the code calculates the number of hours over 40 and multiplies that by $50, then adds the result to the price. The code then subtracts the number of hours over 40 from the hours worked. It multiplies the remaining hours worked by $25 and adds that to the total price.
 In the example above, the result is as follows:
 1250
 
 The interesting thing here is the code inside the if statement. There is a declaration of a new constant, hoursOver40, to store the number of hours over 40. Clearly, you can use it inside the if statement. But what happens if you try to use it at the end of the above code?

...
 print(price)
 print(hoursOver40)
 This would result in the following error:
   Use of unresolved identifier 'hoursOver40'
 This error informs you that you’re only allowed to use the hoursOver40 constant within the scope in which it was created. In this case, the if statement introduced a new scope, so when that scope is finished, you can no longer use the constant.
 However, each scope can use variables and constants from its parent scope. In the example above, the scope inside of the if statement uses the price and hoursWorked variables, which you created in the parent scope.
 
 */

//==========================================================================================================
//                                            The ternary conditional operator
//==========================================================================================================

// If you wanted to determine the minimum and maximum of two variables, you could use if statements, like so:

// (<CONDITION>) ? <TRUE VALUE> : <FALSE VALUE>

let a = 5
let b = 10
let min = a < b ? a : b
let max = a > b ? a : b

//==========================================================================================================
//                                                     Mini Exercises
//==========================================================================================================

// 1. Create a constant named myAge and initialize it with your age. Write an if statement to print out Teenager if your age is between 13 and 19, and Not a teenager if your age is not between 13 and 19.

let myAge2 = 21

if myAge2 > 13 && myAge2 < 19 {
    print("Teenager")
} else {
    print("Not a teenager")
}

// 2. Create a constant named answer and use a ternary condition to set it equal to the result you print out for the same cases in the above exercise. Then print out answer.

let answer = myAge2 > 13 && myAge2 < 19 ? "Teenager" : "Not a teenager"

print(answer)



//==========================================================================================================
//                                                       Loops
//==========================================================================================================

// Mini-exercises:

// 1. Create a variable named counter and set it equal to 0. Create a while loop with the condition counter < 10 which prints out counter is X(where X is replaced with counter value) and then increments counter by 1.
 
var counter = 0

while counter < 10 {
   counter = counter + 1
}

// 2. Create a variable named counter and set it equal to 0. Create another variable named roll and set it equal to 0. Create a repeat-while loop. Inside the loop, set roll equal to Int(arc4random_uniform(6)) which means to pick a random number between 0 and 5. Then increment counter by 1. Finally, print After X rolls, roll is Y where X is the value of counter and Y is the value of roll. Set the loop condition such that the loop finishes when the first 0 is rolled.

var counter2 = 0

var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    counter2 + 1
    print("After \(roll) rolls, roll is \(counter2)")
} while roll == 0


// Change the code below to make the loop stop executing when i reaches 9.

//var i = 5
//
//while (i > 3) {
//    i += 1
//    if i == 9 {
//        break
//    }
//}


//==========================================================================================================
//                                                       for loop
//==========================================================================================================


// Given a range of numbers from 20 to 150 inclusive, print out all the numbers that follows these conditions:

//`Numbers that are divisible by 3`

for num in 20...150 where num % 3 == 0  {
    print(num)
}


// Given a range of numbers from 20 to 150 inclusive, print out all the numbers that follows these conditions:

//`Numbers that are divisible by 2 and 3`

for num in 20...150 where num % 3 == 0 && num % 2 == 0 {
    print(num)
}

//Given a range of numbers from 20 to 150, print out all the numbers that follows these conditions:
//
//`Print out numbers: 31, 35, 40 to 60.`

for number in 2...150 {

if number == 31 || number == 35 || (number > 39 && number <= 60) {

   print(number) }
}


// Example of for loop:

let count = 10
var sum = 0
for i in 1...10 {
sum += i }




// Using underscore as the constant

sum = 1
var lastSum = 0
for _ in 0..<count {
  let temp = sum
  sum = sum + lastSum
  lastSum = temp
}


// 1. Create a constant named range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop which iterates over this range and prints the square of each number.


let range = 1...10


for square in range {
    print(square * square)
}

//2. Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. You’ll need to type convert your loop constant.

for root in range {
    print(root)
}





//==========================================================================================================
//                                                Switch Statements
//==========================================================================================================

//1. Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult; 40-60, Middle aged; 61+, Elderly

let age = 21

switch age {
case 0...2:
    print("Early Childhood")
case 2...12:
    print("Childhood")
case 12...19:
    print("Teenager")
case 19...30:
    print("Young adult")
case 30...60:
    print("Adult")
case 60...100:
    print("Elderly")
default :
   print("Invalid age")
}




//2. Write a switch statement that takes a tuple containing a string and an integer. The string is a name, and the integer is an age. Use the same cases that you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for myself it would print out "Matt is an adult.".


var nameNAge = ("Oscar", 21)


switch nameNAge.1 {
case 0...2:
    print("\(nameNAge.0) is a  baby")
case 2...12:
    print("\(nameNAge.0) is a ")
case 12...19:
    print("\(nameNAge.0) is in his Teenager")
case 19...30:
    print("\(nameNAge.0) is in his Young adult")
case 30...60:
    print("\(nameNAge.0) is in his Adult")
case 60...100:
    print("\(nameNAge.0) is in his Elderly")
default :
   print("\(nameNAge.0) is in his Invalid age")
}



//==========================================================================================================
//                                                 Lab Question
//==========================================================================================================

//  Question 1:

let conditionOne = !(4 < 5) || !(3 > 8) // true
let conditionTwo = !(!true) // true

if conditionOne {
 print("A")
} else if conditionTwo {
 print("B")
}
if conditionTwo {
 print("C")
}
print("D")

// Question 2:

let appInfo = (name: "myCoolApp", version: 0.4)
switch appInfo {
 case (_, 0.0..<1.0):
 print("\(appInfo.0) hasn't released yet")
 case ("myCoolApp", _):
 print("Thanks for looking at myCoolApp!")
 default:
 print("I'm not quite sure what you are looking at")
}

/*
 Switch statements execute the first true statement. Ignores the rest even if their true.
 */

// Question 3:

let x: Int = 4
switch x {
case 0..<4:
 print("A")
case 5..<10:
 print("B")
case is Double:
 print("C")
default:
 print("D")
}

// Question 4:

let candyType : String = "skittles"

switch candyType {
case "mAndM":
 print("Melts in your mouth, not in your hand")
case "skittles":
 print("Taste the rainbow")
case "snickers":
 print("Hungry? Grab a Snickers")
default:
    break
}

// Question 5:
//Given the current weather conditions (rain, sunny, snow), use a switch statement to print an appropriate message to the user

let currentWeather = "rain"

switch currentWeather {
case "rain":
    print("Bring your unbrella")
case "sunny":
    print("Beach day")
case "snow":
    print("Wear a coat")
default:
    print("unknown weather conditions")
}

// Question 6:
//Given the first name and last name of a Fellow, declare fullName variable and use string interpolation to concatenate the Fellow's full name and print to the console e.g The Fellow's full name is John Appleseed

//let firstName = "John"
//let lastName = "Appleseed"

// enter code below

//var fullName = firstName + " " + lastName
//print("The fellow's name is \(fullName)")


let hisFirstName = "Phil"
var lastName = String()

if hisFirstName == "Peter" {
    lastName = "Gabriel"
} else if hisFirstName == "Phil" {
    lastName = "Colins"
}
let hisFullName = hisFirstName + " " + lastName

// Question 9:

var numberOfSides = 9

switch numberOfSides {
case 0...2:
    print("Error")
case 3:
    print("Traingle")
case 4:
    print("Square")
case 5:
    print("Pentagon")
case 6:
    print("Hexagon")
case 7:
    print("Heptagon")
case 8:
    print("Octagon")
case 9:
    print("Nonagon")
case 10:
    print("Decagon")
default:
    print("Error")
}

// Question 10:
//Create a switch statement that will convert a number grade into a letter grade as shown below:
//Numeric Score     Letter Grade
//100             A+
//90 - 99         A
//80 - 89         B
//70 - 79         C
//65 - 69         D
//Below 65        F

let grade = 87

switch grade {
case 0..<65:
    print("Your grade on your final is a F")
case 65...69:
    print("Your grade on your final is a D")
case 70...79:
    print("Your grade on your final is a C")
case 80...89:
    print("Your grade on your final is a B")
case 90...99:
    print("Your grade on your final is a A")
case 100:
    print("Your grade on your final is a A+")
default:
    print("Invalid grade")
}

// Question 12:
//Write an if statement that prints out what decade of life someone is in (e.g "You are in your twenties). Then, write it as a switch statement.

let nameAndBirthYear: (String, Int)
nameAndBirthYear = ("Oscar", 21)

switch nameAndBirthYear.1 {
case 1...10:
    print("you are in your childhood")
case 10...20:
    print("your are in your teens")
case 20...30:
    print("you are in your twenties")
case 30...40:
    print("you are in your thirties")
case 40...50:
    print("you are in your fourties")
default:
    print("you are in your late years")
}

// Question 13:


// Question 14:
//Question 14
//
//Consider the variable below called population and the if-condition.
//
//a. Add an else-if-condition that states if population is less than 10000 but greater than 5000, then message changes to say it's "a medium size town".
//
//b. Add an else-condition where message changes to say it's a mid-size town.
//
//c. Convert your final if-else statement to a switch statement.

var population: Int = 10000
var message = String()

if population > 10000 {
 message = "\(population) is a large town"
}

//Question 15:
//Complete the code below so that it prints out and tells the user if the sum of the two numbers in the tuple is at least 15.
//
//a. Using a conditional
//
//b. Using a switch statement
let myTuple: (Int, Int) = (5, 10)

if myTuple.0 + myTuple.1 >= 15 {
    print("The sum of my tuple is atleast 15")
} else {
    print("The sum of my tuple is not atleast 15")
}

