import UIKit

/*
 Challenge 9: Find pangrams

 Write a function that returns true if it is given a string that is an English pangram, ignoring
 letter case.
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 
 Sample input and output
 • The string “The quick brown fox jumps over the lazy dog” should return true.
 • The string “The quick brown fox jumped over the lazy dog” should return false,
 because it’s missing the S.
 */
func isPangram(_ input : String) -> Bool{
    var totalAlphabet : String = "qwertyuiopasdfghjklzxcvbnm"
    let myString = Array(input.lowercased())
    for i in 0...myString.count-1 {
        if totalAlphabet.contains( myString[i] )  {
            totalAlphabet = totalAlphabet.replacingOccurrences(of: String( myString[i] ), with: "")
        }
    }
    return totalAlphabet.count == 0
}

let string1 = "qwertyuiopasdfghjklzxcvbnm"                  //true
let string2 = "The quick brown fox jumps over the lazy dog" //true
let string3 = "The quick brown fox jumped over the lazy dog"//false

print(isPangram(string1))
print(isPangram(string2))
print(isPangram(string3))
