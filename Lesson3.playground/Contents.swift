import UIKit

var greeting = "Hello, playground"

print(greeting)

// Collection - Array

// It has indexes:              0    1    2    3    4
// There can be duplicates
let arrayOfString: [String] = ["a", "b", "c", "a", "a"]

print(arrayOfString[1])

let arrayOfChar: [Character] = ["a", "b", "c", "a", "a"]

var arrayOfInt: [Int] = []
// var arrayofInt = [Int]() // Another option, but people usually think it's harder to read

arrayOfInt = [1, 2, 3, 4, 5]
arrayOfInt = [11, 22, 33, 44, 55]
print(arrayOfInt)
arrayOfInt += [11, 22, 33, 44, 55]
arrayOfInt.append(66)
arrayOfInt.insert(0, at: 0)
print(type(of: arrayOfInt)) // We don't have to even print as we see logs in the right side
print(arrayOfInt)
print(arrayOfInt.count) // Number of elements in array
print(arrayOfInt.isEmpty) // Check if the array is empty

var fruits = ["mango", "durian"]
fruits.reverse() // reversed is wrong
print(fruits)
print(fruits.sorted())

if !fruits.isEmpty {
    fruits.append("apple")
    fruits.insert("pear", at: 0)
}

// There are many options for remove first last all where, etc.
fruits.removeAll { fruit in
    fruit == "mango"
}

let foundFruit = fruits.contains { fruit in
    fruit == "mango"
}

print(fruits)

var listArrayOfArray: [[Int]] = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9] // This could have been [7, 8, 9, 10, 11, 12]
]

print(listArrayOfArray[1][1])

// Collection - Set
// There is no order (therefore no indexes)
// There CAN'T be duplicates

// To declare empty set
var setOfChar = Set<Character>()
var setOfInt: Set<Int> = []

let setOfString: Set<String> = ["a", "b", "c", "a", "a"]
print(type(of: setOfString))

setOfChar = ["a"]
setOfChar.insert("b")
setOfChar.insert("c")
setOfChar.remove("c")
setOfChar.contains("c")
// setOfChar = [] // Also empties
print(setOfChar)

let someArrayEx = setOfChar.sorted()
someArrayEx.sorted(by: >)


// Collection - Dictionaries

var someStringDict = Dictionary<String, String>() // empty dictionary
var someStringDictioanry: [String: String] = [:]
var sotringDictionary = [String: String]()

// key: value
var student: [String: String] = [
    "firstName": "A",
    "lastName": "M",
    "dob": "1-MAY_1986",
    "link": "wwww"
]

student["first"] // if not key, it will return nil
student["firstName"] // get value
student["firstName"] = "AA"

student.updateValue("www.ww.lv", forKey: "link")
student.removeValue(forKey: "dob")
student["firstName"] = nil // Also removes element

print(type(of: student))

dump(student)


// For Loop/Cycle

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")

for i in 1...9 {
    print("\(i) x 10 is \(i * 10)")
}

for _ in 1...9 {
    print("Hello")
}

let apples = [
    "red apple",
    "red apple",
    "red apple",
    "red apple",
    "green apple",
    "red apple",
    "gree apple",
]

var basket = 0

for apple in apples {
    if apple == "red apple" {
        basket += 1
    }
}

print("I have \(basket) red apple in my basket")

let numberOfLegs = [
    "spider": 8,
    "ant": 6,
    "dog": 4
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName)'s has \(legsCount) legs")
}


var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 50 {
        break
    }
}

