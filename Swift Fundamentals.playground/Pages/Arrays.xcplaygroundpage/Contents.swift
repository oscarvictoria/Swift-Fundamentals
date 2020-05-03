import UIKit

//==========================================================================================================================
//                                                   ACCESING ELEMENTS
//==========================================================================================================================


//==========================================================================================================================
//                                         Accessing arrays using properties and methods
//==========================================================================================================================


var myFirstArray = [59,4,5,7,9]

print(myFirstArray.isEmpty)

var firstNumber = myFirstArray.first

var lastNumber = myFirstArray.last

print(myFirstArray.last as Any)

var lowestValue = myFirstArray.min()

//==========================================================================================================================
//                                              Accessing arrrays using subscripting
//==========================================================================================================================

var firstIndex = myFirstArray[0]

var usingRanges = myFirstArray[0...3]



//==========================================================================================================================
//                                                       MODIFYING ARRAYS
//==========================================================================================================================

//==========================================================================================================================
//                                                       Appending Elements
//==========================================================================================================================

var playersArray = ["Oscar", "Danny", "Vic", "John"]

playersArray += ["Ivan", "Erick"]

print(playersArray)

playersArray.insert("Belinda", at: 0)
print(playersArray)

//==========================================================================================================================
//                                                       Removing Elements
//==========================================================================================================================

var removedPlayer = playersArray.removeLast()
print(playersArray)

// If you want to remove a specific element but don't know its index you can use the property below to locate it's index:
playersArray.firstIndex(of: "Danny")

//==========================================================================================================================
//                                                       Updating Elements
//==========================================================================================================================

print(playersArray)

playersArray[3] = "Victor"

print(playersArray)

// Using Ranges to remove elements

playersArray[0...3] = ["Frank", "Dave"]

print(playersArray)

// The size of the range doesn’t have to be equal to the size of the array that holds the values you’re adding.

//==========================================================================================================================
//                                                   Moving or Swapping Elements
//==========================================================================================================================

// If you want to sort elements by Alphabetical order.
playersArray.sort()
print(playersArray)

//==========================================================================================================================
//                                                   Iterating through an array
//==========================================================================================================================

for _ in playersArray {
    print(playersArray)
}

//==========================================================================================================================
//                                                      Tic Ta to Project
//==========================================================================================================================

let theMatrix = [[1, 2, 3],
                 [4, 5, 6],
                 [7, 8, 9]]



//Row 1
print(theMatrix[0][0])
print(theMatrix[1][0])
print(theMatrix[2][0])

// Row 2
print(theMatrix[0][1])
print(theMatrix[1][1])
print(theMatrix[2][1])

// Row 3
print(theMatrix[0][2])
print(theMatrix[1][2])
print(theMatrix[2][2])

//==========================================================================================================================
//                                                       Array Lab Questions
//==========================================================================================================================

// Question 3:
//Iterate through the array below. For each state, print out the name of the state, a colon, and whether it is or is not **in the continental United States.**

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

// Using the firstIndex(of:) function to find the index of an element

let someElement = moreStates.firstIndex(of: "Alaska")
if let someElement = someElement {
    print("The index of Alaska is \(someElement)")
}

// Question 4:
//Print out how many non-whitespace characters are in `myString`:

let myString = "This is good practice with Strings!"
let myStringIndex = myString.startIndex

// Question 5:
//Iterate through `garden` and place any 🌷 that you find into the `basket`. Replace any 🌷 that you pick up with `"dirt"`. Then print how many 🌷 are in your `basket`

var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
var basket = [String]()

// Question 6:
//The below array represents an unfinished batting lineup for a baseball team. **You, the coach,** need to make some last minute changes:
//
//- Add "Suzuki" to the end of your lineup.
//- Change "Jeter" to "Tejada".
//- Change "Thomas" for "Guerrero"
//- Put "Reyes" to bat 8th instead.

var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]

battingLineup.append("Suzuki")
battingLineup[1] = "Tejada"
battingLineup[5] = "Guerrero"
battingLineup.remove(at: 0)
battingLineup.append("Reyes")

// Question 7:
//Given an array of Ints, find out if it contains a target number.
//
//(The built-in `contains(_:)` function will do this, but you aren't allowed to use it for this exercise.)

var numbers: [Int] = [2,5,7,2,9,7,6]
let target: Int = 32
var answer =  Bool()

for num in numbers {
    if num == 32 {
        answer = true
    } else {
        answer = false
    }
}
print(answer)

// Question 8:
// Find the largest value in an array of Int.  Do not use the built-in `max()` method.

var arrayOfNumbers: [Int] = (1...100).map{ _ in Int.random(in: 0...200)}.map{Int($0)}
arrayOfNumbers.sort()
arrayOfNumbers.last ?? 0

// Question 9:
// Find the smallest value in an array of Int.  Do not use the built in min() method.

var anotherArrayOfNumbers: [Int] = (1...100).map{ _ in Int.random(in: 0...200)}.map{Int($0)}

anotherArrayOfNumbers.sort()
arrayOfNumbers.first

// Question 10:
// Iterate through `secondListOfNumbers`, and print out all the odd numbers.
var secondListOfNumbers = [19,13,14,19,101,10000,141,404]

for numbers in secondListOfNumbers {
    if numbers % 2 != 0 {
        print(numbers)
    }
}

// Question 11:
// Iterate through `thirdListOfNumbers`, and print out the sum.
var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
var sum = 0

for numbers in thirdListOfNumbers {
    sum += numbers
}
print("the sun is \(sum)")

// Question 12:
// Iterate through `thirdListOfNumbers`, and print out the sum of all the even numbers.

var fourthListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
var evenSum = 0

for evenNumbers in fourthListOfNumbers {
    if evenNumbers % 2 == 0 {
       evenSum += evenNumbers
    }
}
print("The sume is \(evenSum)")

// Question 13:
// Append every Int that appears in both `listOne` and `listTwo` to the sharedElements array. Then print **how many Ints** are shared.

var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()

var someInteger = listTwo.firstIndex(of: 7)
if let someInteger = someInteger {
    print("The index of 7 is \(someInteger)")
}

