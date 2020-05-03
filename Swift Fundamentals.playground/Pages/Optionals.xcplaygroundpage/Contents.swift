import UIKit

//==================================================================================================================
//                                                        Optionals
//==================================================================================================================

//==================================================================================================================
//                                                       Introducing nil
//==================================================================================================================

// Mini exercises:

// 1. Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.

var myFavoriteSong: String? = nil

//2. Create a constant called parsedInt and set it equal to Int("10") which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option- Click. Why is it an optional?

let parsedInt = ("dog")


//3. Change the string being parsed in the above exercise to a non-integer (try dog for example). What does parsedInt equal now?


//==================================================================================================================
//                                              Unwrapping optionals
//==================================================================================================================

// Force Unwarapping

var favoriteAuthor: String?
favoriteAuthor = nil

//if favoriteAuthor != nil {
//    print("my favorite author is \(favoriteAuthor)")
//} else {
//    print("no favorite author")
//}

// Optional Binding:

if let favoriteAuthor = favoriteAuthor {
    print("My fovorite author is \(favoriteAuthor)")
} else {
    print("no author")
}


// Mini Exercises:

//1. Using your myFavoriteSong variable from earlier, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a
//   favorite song."
if let myFavoriteSong = myFavoriteSong {
    print("My favorite song is \(myFavoriteSong)")
} else {
    print("I dont have a favorite song")
}
   


//2. Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a
//string; if it’s a string, set it to nil. Observe how your printed result changes.




//==================================================================================================================
//                                                   Introducing guard
//==================================================================================================================








//==================================================================================================================
//                                                    Nil coalescing
//==================================================================================================================

