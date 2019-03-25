import UIKit

/*
Challenge 12: Find longest prefix

 Write a function that accepts a string of words with a similar prefix, separated by spaces, and
 returns the longest substring that prefixes all words.
 
 Sample input and output
 • The string “swift switch swill swim” should return “swi”.
 • The string “flip flap flop” should return “fl”.
 */

func findLongestPrefix(_ input : String) -> String {
    var newInput = input
    while newInput.contains("  ") {
        newInput = newInput.replacingOccurrences(of: "  ", with: " ")
    }
    var myStrings = newInput.components(separatedBy: " ")
    if myStrings.first == "" {
        myStrings.removeFirst()
    }
    if myStrings.last == "" {
        myStrings.removeLast()
    }
    
//    print("|\(newInput)|")
//    print (myStrings)
    var shortestLenght : Int = 100
    var shortestString : String = ""
    for theString in myStrings {
        if theString.count < shortestLenght {
            shortestString = theString
            shortestLenght = theString.count
        }
    }
    
    var longestPrefix : String = ""
    for theString in myStrings {
        if theString.starts(with: shortestString) {
            longestPrefix = shortestString
        } else {
            shortestString.removeLast()
            longestPrefix = shortestString
        }
    }
    
    return longestPrefix
}

let testString1 = "swift switch swill swim    " //swi
let testString2 = "flip  flap      flop"        //fl
let testString3 = "this that those them"        //th
let testString4 = "    l lip loose loose"       //l
let testString5 = ""                            //
let testString6 = "N"                           //N
let testString7 = "NN"                          //NN
let testString8 = "  NN N"                      //N
let testString9 = "I am a bad boy"              //

print("string1 | \(findLongestPrefix(testString1))\n")
print("string2 | \(findLongestPrefix(testString2))\n")
print("string3 | \(findLongestPrefix(testString3))\n")
print("string4 | \(findLongestPrefix(testString4))\n")
print("string5 | \(findLongestPrefix(testString5))\n")
print("string6 | \(findLongestPrefix(testString6))\n")
print("string7 | \(findLongestPrefix(testString7))\n")
print("string8 | \(findLongestPrefix(testString8))\n")
print("string9 | \(findLongestPrefix(testString9))\n")
