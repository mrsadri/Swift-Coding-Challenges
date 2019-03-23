import UIKit
/*
 Challenge 1: Are the letters unique?
 
 Write a function that accepts a String as its only parameter, and returns true if the string has
 only unique letters, taking letter case into account.
 */

let string1 : String = "NN"//"No duplicates"
let string2 : String = "abcdefghijklmnopqrstuvwxyz"
let string3 : String = "AaBbCc"
let string4 : String = "Hello, world"

// Solution 1:
func isThereDuplicateCharachterS1( input : String) -> Bool {
    var result = false
    let arrayOfChars = Array(input)
    for i in 0...(arrayOfChars.count+1)/2 {
        
        if !( (i+1) > (arrayOfChars.count-1) ) {
            for j in (i+1)...arrayOfChars.count-1 {
                if arrayOfChars[i] == arrayOfChars[j] {
                    result = true
                    print("\(arrayOfChars[i])  i:\(i) j:\(j)")
                }
            }
        }
        
    }
    return result
}

print(isThereDuplicateCharachterS1(input: string1))
print(isThereDuplicateCharachterS1(input: string2))
print(isThereDuplicateCharachterS1(input: string3))
print(isThereDuplicateCharachterS1(input: string4))


//Solution 2:
func isThereDuplicateCharachterS2( input : String) -> Bool {
    return input.count != Set(input).count
}

print("----------")
print(isThereDuplicateCharachterS2(input: string1))
print(isThereDuplicateCharachterS2(input: string2))
print(isThereDuplicateCharachterS2(input: string3))
print(isThereDuplicateCharachterS2(input: string4))
