# Swift Coding Challenges 🚀💻

A collection of Swift algorithm and coding challenges solved in Xcode Playgrounds. Perfect for interview preparation, algorithm practice, and improving Swift programming skills.

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![Playgrounds](https://img.shields.io/badge/Xcode-Playgrounds-blue.svg)
![Challenges](https://img.shields.io/badge/Challenges-15+-green.svg)

## 📚 Overview

This repository contains solutions to various Swift coding challenges, each implemented in its own playground file. The challenges cover strings, arrays, algorithms, and more - all fundamental concepts for iOS developers and technical interviews.

## 🎯 Purpose

- **Interview Preparation**: Practice common technical interview questions
- **Algorithm Practice**: Strengthen problem-solving skills
- **Swift Mastery**: Learn Swift idioms and best practices
- **Quick Reference**: Clean, well-documented solutions

## 📋 Challenge List

### String Manipulation

| Challenge | File | Difficulty | Description |
|-----------|------|------------|-------------|
| **C01** | `C01.playground` | Easy | Are the letters unique? Check if string has only unique characters |
| **C02** | `C02.playground` | Easy | Is it a palindrome? Determine if string reads same forwards/backwards |
| **C03** | `C03.playground` | Easy | Do two strings contain same characters? |
| **C04** | `C04.playground` | Medium | Does one string contain another? |
| **C05** | `C05.playground` | Easy | Count specific character occurrences in string |
| **C06** | `C06.playground` | Medium | Remove duplicate letters from string |
| **C07** | `C07.playground` | Medium | Condense whitespace in string |
| **C08** | `C08.playground` | Medium | String is rotated version of another? |
| **C09** | `C09.playground` | Medium | Find pangrams (contains every letter A-Z) |
| **C10** | `C10.playground` | Medium | Vowels and consonants counter |
| **C11** | `C11.playground` | Medium | Three different integers that sum to zero |
| **C12** | `C12.playground` | Medium | Find longest prefix shared by strings |
| **C13** | `C13.playground` | Medium | Run-length encoding string compression |
| **C14+** | `C14+.playground` | Hard | String permutations generator |
| **C15** | `C15.playground` | Medium | Reverse words in a string |

## 💡 Solution Approaches

Most challenges include **multiple solutions**:
1. **Brute Force**: Basic approach for understanding
2. **Optimized**: Efficient solution using Swift features
3. **One-liner** (where possible): Concise Swift syntax

### Example: Challenge 1 - Unique Characters

**Approach 1: Nested Loop** (O(n²))
```swift
func hasUniqueLetters(_ input: String) -> Bool {
    let chars = Array(input)
    for i in 0..<chars.count {
        for j in (i+1)..<chars.count {
            if chars[i] == chars[j] {
                return false
            }
        }
    }
    return true
}
```

**Approach 2: Set** (O(n))
```swift
func hasUniqueLetters(_ input: String) -> Bool {
    return input.count == Set(input).count
}
```

## 🛠️ How to Use

### Opening Playgrounds

1. Clone the repository:
```bash
git clone https://github.com/mrsadri/Swift-Coding-Challenges.git
cd Swift-Coding-Challenges
```

2. Open any playground:
```bash
open C01.playground
```

3. Run the playground in Xcode to see results

### Structure

Each playground contains:
- **Challenge description** - Problem statement
- **Sample input/output** - Test cases
- **Multiple solutions** - Different approaches
- **Test cases** - Verification code

## 📖 Topics Covered

### Strings
- Character uniqueness
- Palindrome detection
- String searching and matching
- String rotation
- Run-length encoding
- Permutations

### Algorithms
- Two-pointer technique
- Set operations
- Character counting
- String compression
- Recursive algorithms

### Swift Features Demonstrated
- String extensions
- Higher-order functions (map, filter, reduce)
- Set and Array operations
- Character and String APIs
- Recursion

## 🎓 Learning Path

### Beginner (Start Here)
1. **C01** - Unique characters (Sets)
2. **C02** - Palindrome (String reversal)
3. **C05** - Character counting (String iteration)

### Intermediate
4. **C06** - Remove duplicates (Set operations)
5. **C08** - String rotation (Algorithms)
6. **C13** - Run-length encoding (String building)

### Advanced
7. **C14+** - Permutations (Recursion)
8. **C11** - Three sum problem (Algorithm optimization)

## 💻 Code Quality Features

- ✅ Clean, readable code
- ✅ Multiple solution approaches
- ✅ Test cases included
- ✅ Comments explaining logic
- ✅ Swift best practices
- ✅ Performance considerations

## 🚀 Example Solutions

### C05: Count Characters
```swift
extension String {
    func charCounter(_ char: Character) -> Int {
        var myString = self
        var result = 0
        while myString.contains(char) {
            result += 1
            if let index = myString.firstIndex(of: char) {
                myString.remove(at: index)
            }
        }
        return result
    }
}

// Usage
"Mississippi".charCounter("i") // Returns: 4
```

### C14+: String Permutations
Complex recursive solution generating all possible arrangements of a string's characters.

## 🎯 Use Cases

### Technical Interviews
- Practice common interview questions
- Multiple solution approaches
- Time complexity analysis

### Algorithm Practice
- Strengthen problem-solving skills
- Learn Swift-specific techniques
- Understand algorithm patterns

### Swift Learning
- See Swift features in action
- Learn idiomatic Swift code
- Understand String APIs

## 📊 Complexity Analysis

Many solutions include multiple approaches with different complexities:
- **Time complexity**: O(n), O(n²), O(n log n)
- **Space complexity**: O(1), O(n)
- **Trade-offs**: Readability vs. performance

## 🔧 Requirements

- Xcode 10.0+
- Swift 5.0+
- macOS for Xcode Playgrounds

## 🤝 Contributing

Feel free to:
- Add new challenges
- Provide alternative solutions
- Improve existing code
- Add more test cases
- Fix bugs or typos

## 📚 Resources

### Related Topics
- Data Structures & Algorithms
- Swift Programming Language
- iOS Interview Preparation
- Computational Complexity

### Recommended Reading
- Swift Documentation
- Algorithm Design Manual
- Cracking the Coding Interview

## 🎓 Skills Developed

- ✅ String manipulation
- ✅ Array operations
- ✅ Algorithm design
- ✅ Problem decomposition
- ✅ Code optimization
- ✅ Swift language features
- ✅ Complexity analysis

## 📄 License

This project is open source and available under the MIT License.

## 👤 Author

**Masih Sadri**
- GitHub: [@mrsadri](https://github.com/mrsadri)

## 🙏 Acknowledgments

- Swift programming community
- Algorithm and data structure resources
- Technical interview preparation materials

---

*Created in 2019 as a comprehensive Swift algorithm practice collection*

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/mrsadri/Swift-Coding-Challenges.git

# Navigate to directory
cd Swift-Coding-Challenges

# Open first challenge
open C01.playground
```

**Happy Coding! 💻🎉**
