import UIKit

/*
 Challenge 2: Is a string a palindrome?

 Write a function that accepts a String as its only parameter, and returns true if the string
 reads the same when reversed, ignoring case.
 
 Sample input and output
 • The string “rotator” should return true.
 • The string “Rats live on no evil star” should return true.
 • The string “Never odd or even” should return false; even though the letters are the
 same in reverse the spaces are in different places.
 • The string “Hello, world” should return false because it reads “dlrow ,olleH”
 backwards.
 
 */

let string0 = ""
let string1 = "N"
let string2 = "NN"
let string3 = "rotator"
let string4 = "Rats live on no evil star"
let string5 = "Never odd or even"
let string6 = "Hello, world"

// --

//Solution 1:
func isPalindromeS1 (input : String) -> Bool {
//    var result = true
    let arrayOfChars = Array(input.lowercased())
    for i in 0...arrayOfChars.count-1 {
        if arrayOfChars[i] != arrayOfChars[arrayOfChars.count-1-i] {
            return false
        }
    }
    return true
}

print(isPalindromeS1(input: string1))
print(isPalindromeS1(input: string2))
print(isPalindromeS1(input: string3))
print(isPalindromeS1(input: string4))
print(isPalindromeS1(input: string5))
print(isPalindromeS1(input: string6))
print("-----------")

//Solution 2:
func isPalindromeS2 (input : String) -> Bool {
    return Array(input.lowercased()) == input.lowercased().reversed()
}

print(isPalindromeS2(input: string1))
print(isPalindromeS2(input: string2))
print(isPalindromeS2(input: string3))
print(isPalindromeS2(input: string4))
print(isPalindromeS2(input: string5))
print(isPalindromeS2(input: string6))
