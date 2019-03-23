import UIKit

/*
 Challenge 11: Three different letters
 
 Write a function that accepts two strings, and returns true if they are identical in length but
 have no more than three different letters, taking case and string order into account.
 
 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.
 */

func doesContainThreeDifferentLetters (_ string1 : String, _ string2 : String) -> Bool {
    if string1.count == string2.count {
        var diffChar = 0
        for i in 0...string1.count-1 {
            if Array(string1)[i] != Array(string2)[i] {
                diffChar += 1
            }
        }
        return diffChar <= 3
    } else {
        return false
    }
}

print(doesContainThreeDifferentLetters("Clamp", "Cramp"))   //true
print(doesContainThreeDifferentLetters("Clamp", "Crams"))   //true
print(doesContainThreeDifferentLetters("Clamp", "Grams"))   //true
print(doesContainThreeDifferentLetters("Clamp", "Grans"))   //false
print(doesContainThreeDifferentLetters("Clamp", "Clam" ))   //false
print(doesContainThreeDifferentLetters("clamp", "maple"))   //false
