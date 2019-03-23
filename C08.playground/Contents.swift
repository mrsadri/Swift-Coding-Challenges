import UIKit

/*
 Challenge 8: String is rotated

 Write a function that accepts two strings, and returns true if one string is rotation of the other,
 taking letter case into account.
 Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 
 Sample input and output
 • The string “abcde” and “eabcd” should return true.
 • The string “abcde” and “cdeab” should return true.
 • The string “abcde” and “abced” should return false; this is not a string rotation.
 • The string “abc” and “a” should return false; this is not a string rotation.
 */

func isStringRotated (string1 : String, string2 : String) -> Bool {
    var result = false
    
    if string1.count == string2.count && string1 != "" {
        let newString = string1 + string1
        result = newString.contains(string2)
    } else {
        return false
    }
    
    return result
}

print(isStringRotated(string1: "eabcd", string2: "abcde"))
print(isStringRotated(string1: "abcde", string2: "cdeab"))
print(isStringRotated(string1: "abcde", string2: "abced"))
print(isStringRotated(string1: "abc", string2: "a"))



