import UIKit

//======================================================================================================================
//                                           Expressions, Variable's and Constants
//======================================================================================================================

let myAge = 20

var averageAge: Double = 20

averageAge = (20 + 30 ) / 2
    

//Challenge 8: Random integer
//You can create a random integer number by using the function arc4random(). This creates a number anywhere between 0 and 4294967295. You can use the modulo operator to truncate this random number to whatever range you want. Declare a constant randomNumber and assign it a random number generated with arc4random(). Then calculate a constant called diceRoll and use the random number you just found to create a random number between 1 and 6.

let randomNumber = arc4random()
let diceRoll = 1 + randomNumber % 6


func isPangram(_ input: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    for char in alphabet {
        if input.lowercased().contains(String(char)) == false {
            return false
        }
    }
    
    return true
}

let sentance = "Two driven jocks help fax my big quiz"
isPangram(sentance)
