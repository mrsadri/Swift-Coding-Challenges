import UIKit

/*
 Challenge 4: Does one string contain another?
 
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 Sample input and output
 
 • The code "Hello, world".fuzzyContains("Hello") should return true.
 • The code "Hello, world".fuzzyContains("WORLD") should return true.
 • The code "Hello, world".fuzzyContains("Goodbye") should return
 false.
 */
extension String {
    func fuzzyContains ( _ input: String) -> Bool {
        var result = false
        
        let milestoneString = Array(self .lowercased())
        let myString        = Array(input.lowercased())
        if input == "" {
            return true
        }
        
        if milestoneString == myString {
            return true
        }
        
        if myString.count < milestoneString.count {
            for i in 0...((milestoneString.count)-(myString.count)) {
                if myString[0] == milestoneString[i] {
                    for j in 0...myString.count-1 {
                        if myString[j] != milestoneString[i+j] {
                            return false
                        } else {
                            result = true
                        }
                    }
                }
            }
        } else {
            return false
        }
        
        return result
    }
}

print("Hello, Dear_".fuzzyContains(", dEA"  ))  //true
print("Hello, world".fuzzyContains("Hello"  ))  //true
print("Hello, world".fuzzyContains("WORLD"  ))  //true
print("Hello, world".fuzzyContains("Goodbye"))  //false
print("========")
print("Hello, world".fuzzyContains(""       ))  //true
print("Hello, world".fuzzyContains("D"      ))  //true
print(""            .fuzzyContains("Goodbye"))  //false
print(""            .fuzzyContains(""       ))  //true

