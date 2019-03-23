import UIKit

/*
 Challenge 7: Condense whitespace

 Write a function that returns a string with any consecutive spaces replaced with a single space.
 
 Sample input and output
 I’ve marked spaces using “[space]” below for visual purposes:
 • The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 • The string “[space][space][space][space]a” should return “[space]a”.
 • The string “abc” should return “abc”.
 */

func condenseWhitespace (_ input: String) -> String {
    var result = "|\(input)|" // "|"s are added to the string to show you it better
    while result.contains("  ") {
        result = result.replacingOccurrences(of: "  ", with: " ")
    }
     return result
}

print(condenseWhitespace("    a"))
print(condenseWhitespace(" a  d"))
print(condenseWhitespace("a    "))
print(condenseWhitespace("   a "))
