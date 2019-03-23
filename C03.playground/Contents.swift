import UIKit

/*
 Challenge 3: Do two strings contain the same characters?
 
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 Sample input and output
 
 • The strings “abca” and “abca” should return true.
 • The strings “abc” and “cba” should return true.
 • The strings “ a1 b2 ” and “b1 a2” should return true.
 • The strings “abc” and “abca” should return false.
 • The strings “abc” and “Abc” should return false.
 • The strings “abc” and “cbAa” should return false.
 */
let testTouple1 : (s1: String, s2 : String) = (s1 : "abc"       , s2: "abca"    ) //false
let testTouple2 : (s1: String, s2 : String) = (s1 : "ab"        , s2: "ba"      ) //true
let testTouple3 : (s1: String, s2 : String) = (s1 : "a"         , s2: "a"       ) //true
let testTouple4 : (s1: String, s2 : String) = (s1 : " a1 b2 "   , s2: "b1 a2"   ) //true
let testTouple5 : (s1: String, s2 : String) = (s1 : "abc"       , s2: "Abc"     ) //false
//--

//Solution 1:
func doesContainSameCharsS1 (input1 : String, input2: String) -> Bool {
    
    var arrayOfChars1 = Array(input1.replacingOccurrences(of: " ", with: ""))
    var arrayOfChars2 = Array(input2.replacingOccurrences(of: " ", with: ""))
    
    if arrayOfChars1.count == arrayOfChars2.count {
        
        for _ in 0...arrayOfChars1.count-1 {
            
            let myChar = arrayOfChars1.removeFirst()
            if arrayOfChars2.contains(myChar) {
                
                var indexOfMyChar : Int = 0
                for i in 0...arrayOfChars2.count-1 {
                    if arrayOfChars2[i] == myChar {
                        indexOfMyChar = i
                    }
                }
                arrayOfChars2.remove(at: indexOfMyChar)
                
            } else {
                return false
            }
            
        }
        
        //--
        if arrayOfChars2.count == 0 {
            return true
        }
        //--
        
    } else {
        return false
    }
    return true
}

print(doesContainSameCharsS1(input1: testTouple1.s1, input2: testTouple1.s2))
print(doesContainSameCharsS1(input1: testTouple2.s1, input2: testTouple2.s2))
print(doesContainSameCharsS1(input1: testTouple3.s1, input2: testTouple3.s2))
print(doesContainSameCharsS1(input1: testTouple4.s1, input2: testTouple4.s2))
print(doesContainSameCharsS1(input1: testTouple5.s1, input2: testTouple5.s2))
print("=============")

//Solution 2:
func doesContainSameCharsS2 (input1 : String, input2: String) -> Bool {
    var arrayOfChars1 = Array(input1.replacingOccurrences(of: " ", with: "")).sorted()
    var arrayOfChars2 = Array(input2.replacingOccurrences(of: " ", with: "")).sorted()
    
    if arrayOfChars1.count == arrayOfChars2.count {
        for i in 0...arrayOfChars1.count-1 {
            if arrayOfChars1[i] != arrayOfChars2[i] {
                return false
            }
        }
    } else {
        return false
    }
    return true
}

print(doesContainSameCharsS2(input1: testTouple1.s1, input2: testTouple1.s2))
print(doesContainSameCharsS2(input1: testTouple2.s1, input2: testTouple2.s2))
print(doesContainSameCharsS2(input1: testTouple3.s1, input2: testTouple3.s2))
print(doesContainSameCharsS2(input1: testTouple4.s1, input2: testTouple4.s2))
print(doesContainSameCharsS2(input1: testTouple5.s1, input2: testTouple5.s2))
