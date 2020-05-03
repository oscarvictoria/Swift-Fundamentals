import UIKit

var str = "Hello, playground"

//=========================================================================================================
//                                               Strings Lab Questions
//=========================================================================================================

// ======================
// How to access a string's characters:
//Start index
//let startIndex = myString.startIndex
//let firstChar = myString[startIndex]
//print(firstChar) //prints "H"
//
////Third character
//let testString = "This string is for testing only"
//let testStringStart = testString.startIndex
//let thirdCharIndex = testString.index(testStringStart, offsetBy: 2)
//let thirdChar = testString[thirdCharIndex]
//print(thirdChar) //prints "i"
//
////Last character
//let myStringEnd = myString.endIndex
//let lastCharIndex = myString.index(before: myStringEnd)
//let lastChar = myString[lastCharIndex]
//print(lastChar) //prints "!"

//Let's try a few out on our own:


//Print the first character in "Fire blasters!"
let myString = "Fire blasters!"
let myStringIndex = myString.startIndex
let firstCharacter = myString[myStringIndex]
print(firstCharacter)

//Print the sixth character in "Hello there!"

let myStringTwo = "Hello there!"
let myStringTwoIndex = myStringTwo.startIndex
let sixthCharIndex = myStringTwo.index(myStringTwoIndex, offsetBy: 6)
let sixthChar = myStringTwo[sixthCharIndex]
print(sixthChar)


//Print the fourth character in "Goodbye there"

let anotherString = "Goodbye there"
let anotherStringIndex = anotherString.startIndex
let fourthCharIndex = anotherString.index(anotherStringIndex, offsetBy: 3)
let fourthChar = anotherString[fourthCharIndex]
print(fourthChar)

//Print the second to last character in "adiós"

let finalString = "adiós"
let finalStringIndex = finalString.endIndex
print(finalString.count)
let secondToLastIndex = finalString.index(finalStringIndex, offsetBy: -2)
let secondToLastChar = finalString[secondToLastIndex]
print(secondToLastChar)

//Print the last character in "🏆☕🤷"

let OneLastString = "🏆☕🤷"
let OneLastStringIndex = OneLastString.endIndex
let lastCharacterIndex = OneLastString.index(before: OneLastStringIndex)
let lastCharacter = OneLastString[lastCharacterIndex]
print(lastCharacter)

finalString.count
finalString.isEmpty
let newString = finalString
print(newString)
newString.uppercased()
newString.hasSuffix(finalString)

// Using Ranges
//let start = myString.startIndex
//let end = myString.index(start, offsetBy: 2)
//let range = start...end
//let substring = myString[range]
//print(substring)

//Make a new String that goes from the first Character to the fifth Character in "abcdefghijklmnopqrstuvwxyz"

//let alphabetString = "abcdefghijklmnopqrstuvwxyz"
//
//let start = alphabetString.startIndex
//let end = myString.index(start, offsetBy: 4)
//let range = start...end
//let subString = alphabetString[range]
//print(subString)

// Make a new String that goes from the eighteenth Character to the twenty fourth Character in "abcdefghijklmnopqrstuvwxyz"

let abcString = "abcdefghijklmnopqrstuvwxyz"
let abcStringIndex = abcString.startIndex
let start = abcString.index(abcStringIndex, offsetBy: 17)
let end = abcString.index(abcStringIndex, offsetBy: 23)
let range = start...end
let subString = abcString[range]
print(subString)

// Make a new String that only contains the first word in "This is a sample String")

var sentance = "This is a sample String"
var words = sentance.components(separatedBy:(" "))

var firstWord = words.index(0, offsetBy: 9)


var theWord = words.first ?? " "


let iterableString = "Somewhere over the rainbow"

for index in iterableString.indices {
    print(iterableString[index], terminator: "")
}


let random = "abc"

for char in random {
    print(char)
}


let label = "Aug 29, 17"

let theStart = label.startIndex
let theEnd = label.index(theStart, offsetBy: 3)
let theRange = theStart...theEnd
let theSubString = label[theRange]
print(theSubString)

