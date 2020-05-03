import Foundation

let age1 = 42
let age2 = 21

let avg1 = (Double(age1) + Double(age2)) / 2


//====================================================================================================================
//                                                             Strings
//====================================================================================================================

var message = "Hello" + " my name is "
let name = "Matt"
message += name // "Hello my name is Matt"

// To add a Character to a string you do this:

 let exclamationMark: Character = "!"
message += String(exclamationMark) // "Hello my name is Matt!"


//====================================================================================================================
//                                                         Mini- Exercises
//====================================================================================================================

// 1. Create a string constant called firstName and initialize it to your first name. Also create a string constant called lastName and initialize it to your last name.

let firstName = "Oscar"
let lastName = "Victoria Gonzalez"

// 2. Create a string constant called fullName by adding the firstName and lastName constants together, separated by a space.

let fullName = ("\(firstName) " + "\(lastName)")

let myDetails = ("Hello, my name is \(firstName)" + " \(lastName). ")

//====================================================================================================================
//                                                           Tuples
//====================================================================================================================


// Mini Exercises

// 1. Declare a constant tuple that contains three Int values followed by a Double. Use this to represent a date (month, day, year) followed by an average temperature for that date.


let currentTime = (9, 24 , 1998, 85.8)

let currentNamedTime = (month: 9, day: 24, year: 1998, temp: 85.8)

let (month, day, _, _) = currentNamedTime


//Challenge 1: Coordinates
//Create a constant called coordinates and assign a tuple containing two and three to it.

let coordinates = (0, 3)

//Challenge 2: Named coordinate
//Create a constant called namedCoordinate with a row and column component.

let namedComponets = (row: coordinates.0, column: coordinates.1)





