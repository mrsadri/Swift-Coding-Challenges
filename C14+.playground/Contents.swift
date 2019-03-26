import UIKit

/*
 Challenge 14: String permutations

 Write a function that prints all possible permutations of a given input string.
 Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
 
 Sample input and output
 • The string “a” should print “a”.
 • The string “ab” should “ab”, “ba”.
 • The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.
 • The string “wombat” should print 720 permutations.
 */




// step1: [[3, 2, 1, 0], [2, 1, 0], [1, 0], [0]]

// step2: [[3,2,1,0], [3,2,0,0], [3,1,1,0], [3,1,0,0], [3,0,1,0], [3,0,0,0], [2,2,1,0] , ..., [0,0,0,0]]

private func secondArray(_ howMany : Int) ->  [[Int]] {
    
    var arrayStep1 : [[Int]] = []
    
    for i in 0..<howMany {
        var innerArray : [Int] = []
        for j in 0..<(howMany-i) {
            let value = howMany-i-j-1
            innerArray.append(value)
        }
        arrayStep1.append(innerArray)
    }
    
    var arrayStep2 : [[Int]] = []
    var wierdArr : [Int] = []// create it as long as 4
    for i in 0..<howMany {
        wierdArr.append(0)
    }
    
    func loopF(i : Int) {
        if i < howMany {
            for index in arrayStep1[i] {
                wierdArr[i] = index
                loopF(i: i+1)
            }
        } else {
            arrayStep2.append( wierdArr)
        }
    }
    loopF(i: 0)
    return arrayStep2
}

func permutationsProducer (by input : String) -> Set<String> {
    var myArr : [String] = []
    for i in secondArray(input.count) {
        var myString = Array(input.reversed())
        var newStr : String = ""
        for j in i {
            let a = myString.remove(at: j)
            newStr.append(contentsOf: String(a))
        }
        myArr.append(newStr)
    }
    print("Total permutations: \(myArr.count)")
    print("Duplicated members: \(myArr.count - Set(myArr).count)")
    return Set(myArr)
}


print("------------\nPermutations: \n \(permutationsProducer(by: "Masihs"))")
