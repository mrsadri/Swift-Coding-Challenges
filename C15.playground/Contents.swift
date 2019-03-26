import UIKit

/*
 Challenge 15: Reverse the words in a string

 Write a function that returns a string with each of its words reversed but in the original order,
 without using a loop.
 
 Sample input and output
 • The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
 • The string “The quick brown fox” should return “ehT kciuq nworb xof”.
 */

func reverseWordsInAString (_ input : String) -> String {
    var result : String = ""
    let myArray = input.split(separator: " ")
    for i in myArray {
        let j = i.reversed()
        result.append(contentsOf: "\(String(j)) ")
    }
    result.removeLast()
    print(result)
    return result
}

reverseWordsInAString("Swift Coding Challenges")
reverseWordsInAString("The quick brown fox")

