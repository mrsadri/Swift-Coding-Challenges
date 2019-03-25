import UIKit

/*
 Challenge 13: Run-length encoding

 Write a function that accepts a string as input, then returns how often each letter is repeated in
 a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 
 Sample input and output
 • The string “aabbcc” should return “a2b2c2”.
 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”
 • The string “aaAAaa” should return “a2A2a2”
 */

func runlengthEncoding(_ input : String) -> String {
    let myString = Array(input+"/")
    var encodedString : String = ""
    var counter : Int = 1
    for i in 0...myString.count-2 {
        if myString[i] == myString[i+1] {
            counter += 1
        } else {
            encodedString.append("\(myString[i])\(counter)")
            counter = 1
        }
    }
    return encodedString
}

let string1 = "aabbcc"
let string2 = "aaabaaabaaa"
let string3 = "aaAAaa"

print(runlengthEncoding(string1))
print(runlengthEncoding(string2))
print(runlengthEncoding(string3))
