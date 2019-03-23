import UIKit

/*
 Challenge 10: Vowels and consonants

 Given a string in English, return a tuple containing the number of vowels and consonants.
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 
 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.
 */

extension String {
    func countVowelsAndConsonants () -> (vowels : Int, consonants : Int) {
        
        var result : (vowels : Int, consonants : Int) = (vowels : 0, consonants : 0)
        var myString = self.lowercased()
        
        //count vowels:
        let vowels : [Character] = ["a", "e", "i", "o", "u"]
        for i in vowels {
            while myString.contains(i) {
                let index = myString.firstIndex(of: i)
                myString.remove(at: index!)
                result.vowels += 1
            }
        }
        
        //count consonants:
        myString = myString.replacingOccurrences(of: " ", with: "")
        result.consonants = myString.count
        
        return result
    }
    
}

print("Swift Coding Challenges".countVowelsAndConsonants()) //6,15
print("Mississippi".countVowelsAndConsonants())             //4,7
