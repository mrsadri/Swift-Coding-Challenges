import UIKit
/*
 Challenge 5: Count the characters

 Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.
 
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 Sample input and output
 
 • The letter “a” appears twice in “The rain in Spain”.
 • The letter “i” appears four times in “Mississippi”.
 • The letter “i” appears three times in “Hacking with Swift”.
 */

extension String {
    func charCounter (_ char : Character) -> Int {
        var myString = self
        var result : Int = 0
        while myString.contains(char) {
            result += 1
            if let indexx = myString.firstIndex(of: char) {
                myString.remove(at: indexx)
            }
            
        }
        return result
    }
}

print("hello, MasSih"       .charCounter("s"))  //1
print("The rain in Spain"   .charCounter("a"))  //2
print("Mississippi"         .charCounter("i"))  //4
print("Hacking with Swift"  .charCounter("i"))  //3
